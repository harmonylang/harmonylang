#define NDEBUG
#define HARMONY_COMBINE

#define _GNU_SOURCE

// Downloaded from https://github.com/exebook/hashdict.c

#ifndef HASHDICTC
#define HASHDICTC
#include <stdlib.h> /* malloc/calloc */
#include <stdint.h> /* uint32_t */
#include <string.h> /* memcpy/memcmp */

#define HASHDICT_VALUE_TYPE void*

typedef void (*enumFunc)(void *env, const void *key, unsigned int key_size,
                                HASHDICT_VALUE_TYPE value);

struct keynode {
	struct keynode *next;
	char *key;
	unsigned int len;
	HASHDICT_VALUE_TYPE value;
};
		
struct dict {
	struct keynode **table;
	int length, count;
	double growth_treshold;
	double growth_factor;
};

struct dict *dict_new(int initial_size);
void dict_delete(struct dict *dict);
void *dict_lookup(struct dict *dict, const void *key, unsigned int keylen);
void **dict_insert(struct dict *dict, const void *key, unsigned int keylen);
void *dict_find(struct dict *dict, const void *key, unsigned int keylen);
void *dict_retrieve(const void *p, int *psize);
void dict_iter(struct dict *dict, enumFunc f, void *user);
#endif

#ifndef JSON_H
#define JSON_H

typedef struct json_buf {
    char *base;
    int len;
} json_buf_t;

struct json_value { 
	enum { JV_ATOM, JV_MAP, JV_LIST } type;
	union {
		json_buf_t atom;
		struct dict *map;		// maps atoms to json_values
		struct {
			struct json_value **vals;
			unsigned int nvals;
		} list;
	} u;
};

struct json_value *json_parse_value(json_buf_t *buf);
struct json_value *json_string(char *s, unsigned int len);
void json_value_free(struct json_value *jv);
void json_dump(struct json_value *jv);
void json_list_append(struct json_value *list, struct json_value *jv);
void json_map_append(struct json_value *map, json_buf_t key, struct json_value *jv);
char *json_lookup_string(struct dict *map, char *key);
struct json_value *json_lookup_map(struct dict *map, char *key);
struct json_value *json_lookup_value(struct dict *map, char *key);

#endif /* JSON_H */

#include <stdint.h>
#include <stdbool.h>

#ifndef HARMONY_COMBINE
#include "hashdict.h"
#include "json.h"
#endif

#define new_alloc(t)	(t *) calloc(1, sizeof(t))

#define CALLTYPE_PROCESS       1
#define CALLTYPE_NORMAL        2
#define CALLTYPE_INTERRUPT     3

struct queue *queue_init(void);
void queue_enqueue(struct queue *queue, void *item);
void queue_prepend(struct queue *queue, void *item);
bool queue_dequeue(struct queue *queue, void **item);
bool queue_empty(struct queue *queue);
void queue_release(struct queue *queue);
void queue_cleanup(void);

void *mcopy(void *p, unsigned int size);
char *scopy(char *s);
void mfree(void *p);

unsigned long to_ulong(const char *p, int len);

void ops_init();
struct op_info *ops_get(char *opname, int size);

struct code {
    struct op_info *oi;
    const void *env;
    bool choose;
    bool breakable;
};

struct context {     // context value
    uint64_t name;        // name of method
    uint64_t entry;       // entry point of main method
    uint64_t arg;         // argument provided to spawn
    uint64_t this;        // thread-local state
    uint64_t vars;        // local variables
    uint64_t trap_pc;     // trap program counter
    uint64_t trap_arg;    // trap argument
    uint64_t failure;     // atom value describing failure, or 0 if no failure
    int pc;               // program counter
    int fp;               // frame pointer
    enum phase {
        CTX_START,        // before first "switch" operation
        CTX_MIDDLE,       // normal operation
        CTX_END           // terminated
    } phase;
    int atomic;           // atomic counter
    int readonly;         // readonly counter
    bool interruptlevel;  // interrupt level
    bool stopped;         // context is stopped
    int sp;               // stack size
    uint64_t stack[0];
};

struct state {
    uint64_t vars;        // shared variables
    uint64_t choosing;    // context that is choosing if non-zero
    uint64_t ctxbag;      // bag of running contexts
    uint64_t stopbag;     // bag of stopped contexts
    uint64_t termbag;     // bag of terminated contexts
    uint64_t invariants;  // set of invariants that must hold
};

struct op_info {
    const char *name;
    void *(*init)(struct dict *);
    void (*op)(const void *env, struct state *state, struct context **pctx);
};

void value_init();
uint64_t value_from_json(struct dict *map);
int value_cmp(uint64_t v1, uint64_t v2);
void *value_get(uint64_t v, int *size);
void *value_copy(uint64_t v, int *size);
uint64_t value_put_atom(const void *p, int size);
uint64_t value_put_set(void *p, int size);
uint64_t value_put_dict(void *p, int size);
uint64_t value_put_address(void *p, int size);
uint64_t value_put_context(struct context *ctx);
char *value_string(uint64_t v);
char *indices_string(const uint64_t *vec, int size);
char *value_json(uint64_t v);

#define VALUE_BITS      3
#define VALUE_MASK      ((uint64_t) ((1 << VALUE_BITS) - 1))

#define VALUE_BOOL      0
#define VALUE_INT       1
#define VALUE_ATOM      2
#define VALUE_PC        3
#define VALUE_DICT      4
#define VALUE_SET       5
#define VALUE_ADDRESS   6
#define VALUE_CONTEXT   7

#define VALUE_FALSE     VALUE_BOOL
#define VALUE_TRUE      ((1 << VALUE_BITS) | VALUE_BOOL)

#define VALUE_MAX   ((~(uint64_t)0) >> (VALUE_BITS + 1))
#define VALUE_MIN   (((uint64_t) 1) << (64 - VALUE_BITS - 1))

uint64_t dict_store(uint64_t dict, uint64_t key, uint64_t value);
uint64_t dict_load(uint64_t dict, uint64_t key);
bool dict_tryload(uint64_t dict, uint64_t key, uint64_t *result);
uint64_t dict_remove(uint64_t dict, uint64_t key);
uint64_t bag_add(uint64_t bag, uint64_t v);
void ctx_push(struct context **pctx, uint64_t v);

struct env_Cut {
    uint64_t set, var;
};

struct env_DelVar {
    uint64_t name;
};

struct env_Frame {
    uint64_t name;
    struct var_tree *args;
};

struct env_IncVar {
    uint64_t name;
};

struct env_Invariant {
    int cnt;
};

struct env_Jump {
    int pc;
};

struct env_JumpCond {
    uint64_t cond;
    int pc;
};

struct env_Load {
    uint64_t *indices;
    int n;
};

struct env_LoadVar {
    uint64_t name;
};

struct env_Move {
    int offset;
};

struct env_Nary {
    int arity;
    struct f_info *fi;
};

struct env_Push {
    uint64_t value;
};

struct env_Split {
    int count;
};

struct env_Stop {
    uint64_t *indices;
    int n;
};

struct env_Store {
    uint64_t *indices;
    int n;
};

struct env_StoreVar {
    struct var_tree *args;
};

uint64_t ctx_failure(struct context *ctx, char *fmt, ...);
void panic(char *s);

#include <sys/time.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <inttypes.h>
#include <assert.h>

#ifndef HARMONY_COMBINE
#include "global.h"
#endif

#define CHUNKSIZE   (1 << 12)

struct combined {           // combination of current state and current context
    struct state state;
    struct context context;
};

struct component {
    bool good;          // terminating or out-going edge
};

struct edge {
    struct edge *next;      // linked list maintenance
    uint64_t ctx, choice;   // ctx that made the microstep, choice if any
    bool interrupt;         // set if state change is an interrupt
    struct node *node;      // resulting node (state)
    int weight;
};

struct node {
    // Information about state
    struct state *state;    // state corresponding to this node
    int id;                 // nodes are numbered starting from 0
    struct edge *fwd;       // forward edges
    struct edge *bwd;       // backward edges

    // How to get here from parent node
    struct node *parent;    // shortest path to initial state
    int len;                // length of path to initial state
    uint64_t before;        // context before state change
    uint64_t after;         // context after state change (current context)
    uint64_t choice;        // choice made if any
    bool interrupt;         // set if gotten here by interrupt

    // SCC
    bool visited;           // for Kosaraju algorithm
    unsigned int component; // strongly connected component id
};

struct failure {
    enum { FAIL_SAFETY, FAIL_INVARIANT, FAIL_TERMINATION } type;
    struct node *node;      // failed state
    uint64_t ctx;           // context that failed (before it failed)
    uint64_t choice;        // choice if any
};

struct code *code;
int code_len;

static struct node **graph;        // vector of all nodes
static int graph_size;             // to create node identifiers
static int graph_alloc;            // size allocated
static struct queue *failures;     // queue of "struct failure"  (TODO: make part of struct node "issues")
static uint64_t *processes;        // list of contexts of processes
static int nprocesses;             // the number of processes in the list
static double lasttime;            // since last report printed
static int timecnt;                // to reduce time overhead
static int enqueued;               // #states enqueued
static int dequeued;               // #states dequeued
static bool dumpfirst;             // for json dumping

static void graph_add(struct node *node){
    node->id = graph_size;
    if (graph_size >= graph_alloc) {
        graph_alloc = (graph_alloc + 1) * 2;
        graph = realloc(graph, (graph_alloc * sizeof(struct node *)));
    }
    graph[graph_size++] = node;
}

static void code_get(struct json_value *jv){
    assert(jv->type == JV_MAP);
    struct json_value *op = dict_lookup(jv->u.map, "op", 2);
    assert(op->type == JV_ATOM);
    struct op_info *oi = ops_get(op->u.atom.base, op->u.atom.len);
    if (oi == NULL) {
        fprintf(stderr, "Unknown HVM instruction: %.*s\n", op->u.atom.len, op->u.atom.base);
        exit(1);
    }
    code = realloc(code, (code_len + 1) * 2 * sizeof(struct code));
    struct code *c = &code[code_len++];
    c->oi = oi;
    c->env = (*oi->init)(jv->u.map);
    c->choose = strcmp(oi->name, "Choose") == 0;
    c->breakable = strcmp(oi->name, "Load") == 0 ||
        strcmp(oi->name, "Store") == 0 ||
        strcmp(oi->name, "AtomicInc") == 0;
}

bool invariant_check(struct state *state, struct context **pctx, int end){
    assert((*pctx)->sp == 0);
    assert((*pctx)->failure == 0);
    (*pctx)->pc++;
    while ((*pctx)->pc != end) {
        struct op_info *oi = code[(*pctx)->pc].oi;
        int oldpc = (*pctx)->pc;
        (*oi->op)(code[oldpc].env, state, pctx);
        if ((*pctx)->failure != 0) {
            (*pctx)->sp = 0;
            return false;
        }
        assert((*pctx)->pc != oldpc);
        assert((*pctx)->phase != CTX_END);
    }
    assert((*pctx)->sp == 1);
    (*pctx)->sp = 0;
    uint64_t b = (*pctx)->stack[0];
    assert((b & VALUE_MASK) == VALUE_BOOL);
    return b >> VALUE_BITS;
}

void check_invariants(struct node *node, struct context **pctx){
    struct state *state = node->state;
    extern int invariant_cnt(const void *env);

    assert((state->invariants & VALUE_MASK) == VALUE_SET);
    assert((*pctx)->sp == 0);
    int size;
    uint64_t *vals = value_get(state->invariants, &size);
    size /= sizeof(uint64_t);
    for (int i = 0; i < size; i++) {
        assert((vals[i] & VALUE_MASK) == VALUE_PC);
        (*pctx)->pc = vals[i] >> VALUE_BITS;
        assert(strcmp(code[(*pctx)->pc].oi->name, "Invariant") == 0);
        int cnt = invariant_cnt(code[(*pctx)->pc].env);
        bool b = invariant_check(state, pctx, (*pctx)->pc + cnt);
        if ((*pctx)->failure != 0) {
            printf("IC FAIL %s\n", value_string((*pctx)->failure));
            b = false;
        }
        if (!b) {
            struct failure *f = new_alloc(struct failure);
            f->type = FAIL_INVARIANT;
            f->ctx = node->before;
            f->choice = node->choice;
            f->node = node;
            queue_enqueue(failures, f);
        }
    }
}

void onestep(struct node *node, uint64_t ctx, uint64_t choice, bool interrupt,
        struct dict *visited, struct queue *todo, struct context **pinv_ctx,
        bool infloop_detect){
    // Make a copy of the state
    struct state *sc = new_alloc(struct state);
    memcpy(sc, node->state, sizeof(*sc));
    sc->choosing = 0;

    // Make a copy of the context
    struct context *cc = value_copy(ctx, NULL);
    assert(cc->phase != CTX_END);
    assert(cc->failure == 0);

    if (false) {
        printf("ONESTEP %"PRIx64" %"PRIx64"\n", ctx, sc->ctxbag);
    }

    // See if we should also try an interrupt.
    if (interrupt) {
        extern void interrupt_invoke(struct context **pctx);
		assert(cc->trap_pc != 0);
        interrupt_invoke(&cc);
    }
    else if (sc->choosing == 0 && cc->trap_pc != 0 && !cc->interruptlevel) {
        onestep(node, ctx, choice, true, visited, todo, pinv_ctx, infloop_detect);
    }

    // Copy the choice
    uint64_t choice_copy = choice;

    bool choosing = false, infinite_loop = false;;
    struct dict *infloop = NULL;        // infinite loop detector
    for (int loopcnt = 0;; loopcnt++) {
        int pc = cc->pc;

        if (timecnt-- == 0) {
            struct timeval tv;
            gettimeofday(&tv, NULL);
            double now = tv.tv_sec + (double) tv.tv_usec / 1000000;
            if (now - lasttime > 1) {
                if (lasttime != 0) {
                    char *p = value_string(cc->name);
                    printf("%s pc=%d states=%d queue=%d\n",
                            p, cc->pc, enqueued, enqueued - dequeued);
                    free(p);
                }
                lasttime = now;
            }
            timecnt = 1;
        }

        struct op_info *oi = code[pc].oi;
        if (code[pc].choose) {
            cc->stack[cc->sp - 1] = choice;
            cc->pc++;
        }
        else {
            if (code[pc].breakable) {
                assert(cc->phase != CTX_END);
                cc->phase = CTX_MIDDLE;
            }
            (*oi->op)(code[pc].env, sc, &cc);
        }

        if (cc->phase != CTX_END && cc->failure == 0 && (infloop_detect || loopcnt > 1000)) {
            if (infloop == NULL) {
                infloop = dict_new(0);
            }

            int stacksize = cc->sp * sizeof(uint64_t);
            int combosize = sizeof(struct combined) + stacksize;
            struct combined *combo = calloc(1, combosize);
            combo->state = *sc;
            memcpy(&combo->context, cc, sizeof(*cc) + stacksize);
            void **p = dict_insert(infloop, combo, combosize);
            free(combo);
            if (*p == (void *) 0) {
                *p = (void *) 1;
            }
            else if (infloop_detect) {
                cc->failure = value_put_atom("infinite loop", 13);
                infinite_loop = true;
            }
            else {
                // start over, as twostep does not have loopcnt optimization
                onestep(node, ctx, choice_copy, interrupt, visited, todo, pinv_ctx, true);
                free(cc);
                free(sc);
                return;
            }
        }

        if (cc->phase == CTX_END || cc->failure != 0 || cc->stopped) {
            break;
        }
        if (cc->pc == pc) {
            fprintf(stderr, ">>> %s\n", oi->name);
        }
        assert(cc->pc != pc);

        /* Peek at the next instruction.
         */
        oi = code[cc->pc].oi;
        if (code[cc->pc].choose) {
            assert(cc->sp > 0);
            if (cc->readonly > 0) {
                ctx_failure(cc, "can't choose in assertion or invariant");
                break;
            }
            uint64_t s = cc->stack[cc->sp - 1];
            if ((s & VALUE_MASK) != VALUE_SET) {
                ctx_failure(cc, "choose operation requires a set");
                break;
            }
            int size;
            uint64_t *vals = value_get(s, &size);
            size /= sizeof(uint64_t);
            if (size == 0) {
                ctx_failure(cc, "choose operation requires a non-empty set");
                break;
            }
            if (size == 1) {            // TODO.  This optimization is probably not worth it
                choice = vals[0];
            }
            else {
                choosing = true;
                break;
            }
        }

        if (cc->phase != CTX_START && cc->atomic == 0 && sc->ctxbag != VALUE_DICT &&
                code[cc->pc].breakable) {
            break;
        }
    }
    
    if (infloop != NULL) {
        dict_delete(infloop);
    }

    // Remove old context from the bag
    uint64_t count = dict_load(sc->ctxbag, ctx);
    assert((count & VALUE_MASK) == VALUE_INT);
    count -= 1 << VALUE_BITS;
    if (count == VALUE_INT) {
        sc->ctxbag = dict_remove(sc->ctxbag, ctx);
    }
    else {
        sc->ctxbag = dict_store(sc->ctxbag, ctx, count);
    }

    // Store new context in value directory.  Must be immutable now.
    uint64_t after = value_put_context(cc);

    // If choosing, save in state
    if (choosing) {
        assert(cc->phase != CTX_END);
        sc->choosing = after;
    }

    // Add new context to state unless it's terminated or stopped
    if (cc->stopped) {
        sc->stopbag = bag_add(sc->stopbag, after);
    }
    else if (cc->phase != CTX_END) {
        sc->ctxbag = bag_add(sc->ctxbag, after);
    }

    // Weight of this step
    int weight = ctx == node->after ? 0 : 1;

    // See if this new state was already seen before.
    void **p = dict_insert(visited, sc, sizeof(*sc));
    struct node *next;
    if ((next = *p) == NULL) {
        *p = next = new_alloc(struct node);
        next->parent = node;
        next->state = sc;               // TODO: duplicate value
        next->before = ctx;
        next->choice = choice_copy;
        next->interrupt = interrupt;
        next->after = after;
        next->len = node->len + weight;
        graph_add(next);

        if (sc->choosing == 0 && sc->invariants != VALUE_SET) {
            check_invariants(next, pinv_ctx);
        }

        if (sc->ctxbag != VALUE_DICT && cc->failure == 0 &&
                queue_empty(failures)) {
            if (weight == 0) {
                queue_prepend(todo, next);
            }
            else {
                queue_enqueue(todo, next);
            }
            enqueued++;
        }
    }
    else {
        free(sc);

        if (next->len > node->len + weight) {
            next->parent = node;
            next->before = ctx;
            next->after = after;
            next->choice = choice_copy;
            next->len = node->len + weight;
        }
    }

    // Add a forward edge from node to next.
    struct edge *fwd = new_alloc(struct edge);
    fwd->ctx = ctx;
    fwd->choice = choice_copy;
    fwd->interrupt = interrupt;
    fwd->node = next;
    fwd->weight = weight;
    fwd->next = node->fwd;
    node->fwd = fwd;

    // Add a backward edge from next to node.
    struct edge *bwd = new_alloc(struct edge);
    bwd->ctx = ctx;
    bwd->choice = choice_copy;
    fwd->interrupt = interrupt;
    bwd->node = node;
    bwd->weight = weight;
    bwd->next = next->bwd;
    next->bwd = bwd;

    if (cc->failure != 0) {
        struct failure *f = new_alloc(struct failure);
        f->type = infinite_loop ? FAIL_TERMINATION : FAIL_SAFETY;
        f->ctx = ctx;
        f->choice = choice_copy;
        f->node = next;
        queue_enqueue(failures, f);
    }

    free(cc);
}

void print_vars(FILE *file, uint64_t v){
    assert((v & VALUE_MASK) == VALUE_DICT);
    int size;
    uint64_t *vars = value_get(v, &size);
    size /= sizeof(uint64_t);
    fprintf(file, "{");
    for (int i = 0; i < size; i += 2) {
        if (i > 0) {
            fprintf(file, ",");
        }
        char *k = value_string(vars[i]);
        char *v = value_json(vars[i+1]);
        fprintf(file, " \"%s\": %s", k+1, v);
        free(k);
        free(v);
    }
    fprintf(file, " }");
}

bool print_trace(FILE *file, struct context *ctx, int pc, int fp, uint64_t vars){
    if (fp == 0) {
        return false;
    }
    assert(fp >= 4);

	int level = 0, orig_pc = pc;
    if (strcmp(code[pc].oi->name, "Frame") == 0) {
        uint64_t ct = ctx->stack[ctx->sp - 2];
        assert((ct & VALUE_MASK) == VALUE_INT);
        switch (ct >> VALUE_BITS) {
        case CALLTYPE_PROCESS:
            pc++;
            break;
        case CALLTYPE_INTERRUPT:
        case CALLTYPE_NORMAL:
            {
                uint64_t retaddr = ctx->stack[ctx->sp - 3];
                assert((retaddr & VALUE_MASK) == VALUE_PC);
                pc = retaddr >> VALUE_BITS;
            }
            break;
        default:
            fprintf(stderr, "call type: %"PRIx64" %d %d %d\n", ct, ctx->sp, ctx->fp, ctx->pc);
            // panic("print_trace: bad call type 1");
        }
    }
    while (--pc >= 0) {
        if (strcmp(code[pc].oi->name, "Return") == 0) {
			level++;
		}
        else if (strcmp(code[pc].oi->name, "Frame") == 0) {
			if (level == 0) {
				if (fp >= 5) {
                    assert((ctx->stack[fp - 5] & VALUE_MASK) == VALUE_PC);
					int npc = ctx->stack[fp - 5] >> VALUE_BITS;
					uint64_t nvars = ctx->stack[fp - 2];
					int nfp = ctx->stack[fp - 1] >> VALUE_BITS;
					if (print_trace(file, ctx, npc, nfp, nvars)) {
                        fprintf(file, ",\n");
                    }
				}
				fprintf(file, "            {\n");
				fprintf(file, "              \"pc\": \"%d\",\n", orig_pc);
				fprintf(file, "              \"xpc\": \"%d\",\n", pc);

				const struct env_Frame *ef = code[pc].env;
				char *s = value_string(ef->name), *a = NULL;
                a = value_string(ctx->stack[fp - 3]);
				if (*a == '(') {
					fprintf(file, "              \"method\": \"%s%s\",\n", s + 1, a);
				}
				else {
					fprintf(file, "              \"method\": \"%s(%s)\",\n", s + 1, a);
				}

                uint64_t ct = ctx->stack[fp - 4];
                assert((ct & VALUE_MASK) == VALUE_INT);
                switch (ct >> VALUE_BITS) {
                case CALLTYPE_PROCESS:
                    fprintf(file, "              \"calltype\": \"process\",\n");
                    break;
                case CALLTYPE_NORMAL:
                    fprintf(file, "              \"calltype\": \"normal\",\n");
                    break;
                case CALLTYPE_INTERRUPT:
                    fprintf(file, "              \"calltype\": \"interrupt\",\n");
                    break;
                default:
                    panic("print_trace: bad call type 2");
                }

				free(s);
				free(a);
				fprintf(file, "              \"vars\": ");
				print_vars(file, vars);
				fprintf(file, "\n");
				fprintf(file, "            }");
				return true;
			}
            else {
                assert(level > 0);
                level--;
            }
        }
    }
    return false;
}

char *ctx_status(struct node *node, uint64_t ctx) {
    if (node->state->choosing == ctx) {
        return "choosing";
    }
    while (node->state->choosing != 0) {
        node = node->parent;
    }
    struct edge *edge;
    for (edge = node->fwd; edge != NULL; edge = edge->next) {
        if (edge->ctx == ctx) {
            break;
        }
    };
    if (edge != NULL && edge->node == node) {
        return "blocked";
    }
    return "runnable";
}

void print_context(FILE *file, uint64_t ctx, int tid, struct node *node){
    char *s, *a;

    fprintf(file, "        {\n");
    fprintf(file, "          \"tid\": \"%d\",\n", tid);

    struct context *c = value_get(ctx, NULL);

    s = value_string(c->name);
    a = value_string(c->arg);
    if (*a == '(') {
        fprintf(file, "          \"name\": \"%s%s\",\n", s + 1, a);
    }
    else {
        fprintf(file, "          \"name\": \"%s(%s)\",\n", s + 1, a);
    }
    free(s);
    free(a);

    // assert((c->entry & VALUE_MASK) == VALUE_PC);   TODO
    fprintf(file, "          \"entry\": \"%d\",\n", (int) (c->entry >> VALUE_BITS));

    fprintf(file, "          \"pc\": \"%d\",\n", c->pc);
    fprintf(file, "          \"fp\": \"%d\",\n", c->fp);

#ifdef notdef
    {
        fprintf(file, "STACK %d:\n", c->fp);
        for (int x = 0; x < c->sp; x++) {
            fprintf(file, "    %d: %s\n", x, value_string(c->stack[x]));
        }
    }
#endif

    fprintf(file, "          \"trace\": [\n");
    print_trace(file, c, c->pc, c->fp, c->vars);
    fprintf(file, "\n");
    fprintf(file, "          ],\n");

    if (c->failure != 0) {
        s = value_string(c->failure);
        fprintf(file, "          \"failure\": \"%s\",\n", s + 1);
        free(s);
    }

    if (c->trap_pc != 0) {
        s = value_string(c->trap_pc);
        a = value_string(c->trap_arg);
        if (*a == '(') {
            fprintf(file, "          \"trap\": \"%s%s\",\n", s, a);
        }
        else {
            fprintf(file, "          \"trap\": \"%s(%s)\",\n", s, a);
        }
        free(s);
    }

    if (c->interruptlevel) {
        fprintf(file, "          \"interruptlevel\": \"1\",\n");
    }

    if (c->atomic != 0) {
        fprintf(file, "          \"atomic\": \"%d\",\n", c->atomic);
    }
    if (c->readonly != 0) {
        fprintf(file, "          \"readonly\": \"%d\",\n", c->readonly);
    }

    if (c->phase == CTX_END) {
        fprintf(file, "          \"mode\": \"terminated\",\n");
    }
    else if (c->failure != 0) {
        fprintf(file, "          \"mode\": \"failed\",\n");
    }
    else if (c->stopped) {
        fprintf(file, "          \"mode\": \"stopped\",\n");
    }
    else {
        fprintf(file, "          \"mode\": \"%s\",\n", ctx_status(node, ctx));
    }

#ifdef notdef
    fprintf(file, "          \"stack\": [\n");
    for (int i = 0; i < c->sp; i++) {
        s = value_string(c->stack[i]);
        if (i < c->sp - 1) {
            fprintf(file, "            \"%s\",\n", s);
        }
        else {
            fprintf(file, "            \"%s\"\n", s);
        }
        free(s);
    }
    fprintf(file, "          ],\n");
#endif

    s = value_json(c->this);
    fprintf(file, "          \"this\": %s\n", s);
    free(s);

    fprintf(file, "        }");
}

void print_state(FILE *file, struct node *node){
#ifdef notdef
    fprintf(file, "      \"shared\": ");
    print_vars(file, node->state->vars);
    fprintf(file, ",\n");
#endif

    struct state *state = node->state;
    extern int invariant_cnt(const void *env);
    struct context *inv_ctx = new_alloc(struct context);
    uint64_t inv_nv = value_put_atom("name", 4);
    uint64_t inv_tv = value_put_atom("tag", 3);
    inv_ctx->name = value_put_atom("__invariant__", 13);
    inv_ctx->arg = VALUE_DICT;
    inv_ctx->this = VALUE_DICT;
    inv_ctx->vars = VALUE_DICT;
    inv_ctx->atomic = inv_ctx->readonly = 1;
    inv_ctx->interruptlevel = false;

    fprintf(file, "      \"invfails\": [");
    assert((state->invariants & VALUE_MASK) == VALUE_SET);
    int size;
    uint64_t *vals = value_get(state->invariants, &size);
    size /= sizeof(uint64_t);
    int nfailures = 0;
    for (int i = 0; i < size; i++) {
        assert((vals[i] & VALUE_MASK) == VALUE_PC);
        inv_ctx->pc = vals[i] >> VALUE_BITS;
        assert(strcmp(code[inv_ctx->pc].oi->name, "Invariant") == 0);
        int cnt = invariant_cnt(code[inv_ctx->pc].env);
        bool b = invariant_check(state, &inv_ctx, inv_ctx->pc + cnt);
        if (inv_ctx->failure != 0) {
            b = false;
        }
        if (!b) {
            if (nfailures != 0) {
                fprintf(file, ",");
            }
            fprintf(file, "\n        {\n");
            fprintf(file, "          \"pc\": \"%"PRIu64"\",\n", vals[i] >> VALUE_BITS);
            if (inv_ctx->failure == 0) {
                fprintf(file, "          \"reason\": \"invariant violated\"\n");
            }
            else {
                char *val = value_string(inv_ctx->failure);
                fprintf(file, "          \"reason\": \"%s\"\n", val + 1);
                free(val);
            }
            nfailures++;
            fprintf(file, "        }");
        }
    }
    fprintf(file, "\n      ],\n");
    free(inv_ctx);

    fprintf(file, "      \"contexts\": [\n");
    for (int i = 0; i < nprocesses; i++) {
        print_context(file, processes[i], i, node);
        if (i < nprocesses - 1) {
            fprintf(file, ",");
        }
        fprintf(file, "\n");
    }
    fprintf(file, "      ]\n");
}

void diff_state(FILE *file, struct state *oldstate, struct state *newstate,
                struct context *oldctx, struct context *newctx,
                bool interrupt, bool choose, uint64_t choice){
    if (dumpfirst) {
        dumpfirst = false;
    }
    else {
        fprintf(file, ",");
    }
    fprintf(file, "\n        {\n");
    if (newstate->vars != oldstate->vars) {
        fprintf(file, "          \"shared\": ");
        print_vars(file, newstate->vars);
        fprintf(file, ",\n");
    }
    if (interrupt) {
        fprintf(file, "          \"interrupt\": \"True\",\n");
    }
    if (choose) {
        char *val = value_json(choice);
        fprintf(file, "          \"choose\": %s,\n", val);
        free(val);
    }
    fprintf(file, "          \"npc\": \"%d\",\n", newctx->pc);
    if (newctx->fp != oldctx->fp) {
        fprintf(file, "          \"fp\": \"%d\",\n", newctx->fp);
        fprintf(file, "          \"trace\": [\n");
        print_trace(file, newctx, newctx->pc, newctx->fp, newctx->vars);
        fprintf(file, "\n");
        fprintf(file, "          ],\n");
    }
    if (newctx->this != oldctx->this) {
        char *val = value_json(newctx->this);
        fprintf(file, "          \"this\": %s,\n", val);
        free(val);
    }
    if (newctx->vars != oldctx->vars) {
        fprintf(file, "          \"local\": ");
        print_vars(file, newctx->vars);
        fprintf(file, ",\n");
    }
    if (newctx->atomic != oldctx->atomic) {
        fprintf(file, "          \"atomic\": \"%d\",\n", newctx->atomic);
    }
    if (newctx->readonly != oldctx->readonly) {
        fprintf(file, "          \"readonly\": \"%d\",\n", newctx->readonly);
    }
    if (newctx->interruptlevel != oldctx->interruptlevel) {
        fprintf(file, "          \"interruptlevel\": \"%d\",\n", newctx->interruptlevel ? 1 : 0);
    }
    if (newctx->failure != 0) {
        char *val = value_string(newctx->failure);
        fprintf(file, "          \"failure\": \"%s\",\n", val + 1);
        fprintf(file, "          \"mode\": \"failed\",\n");
        free(val);
    }
    else if (newctx->phase == CTX_END) {
        fprintf(file, "          \"mode\": \"terminated\",\n");
    }

    int common;
    for (common = 0; common < newctx->sp && common < oldctx->sp; common++) {
        if (newctx->stack[common] != oldctx->stack[common]) {
            break;
        }
    }
    if (common < oldctx->sp) {
        fprintf(file, "          \"pop\": \"%d\",\n", oldctx->sp - common);
    }
    fprintf(file, "          \"push\": [");
    for (int i = common; i < newctx->sp; i++) {
        if (i > common) {
            fprintf(file, ",");
        }
        char *val = value_json(newctx->stack[i]);
        fprintf(file, " %s", val);
        free(val);
    }
    fprintf(file, " ],\n");

    fprintf(file, "          \"pc\": \"%d\"\n", oldctx->pc);

    fprintf(file, "        }");
}

void diff_dump(FILE *file, struct state *oldstate, struct state *newstate,
                struct context **oldctx, struct context *newctx,
                bool interrupt, bool choose, uint64_t choice){
    int newsize = sizeof(*newctx) + (newctx->sp * sizeof(uint64_t));

    if (memcmp(oldstate, newstate, sizeof(struct state)) == 0 &&
            (*oldctx)->sp == newctx->sp &&
            memcmp(*oldctx, newctx, newsize) == 0) {
        return;
    }

    // Keep track of old state and context for taking diffs
    diff_state(file, oldstate, newstate, *oldctx, newctx, interrupt, choose, choice);
    *oldstate = *newstate;
    free(*oldctx);
    *oldctx = malloc(newsize);
    memcpy(*oldctx, newctx, newsize);
}

// similar to onestep.  TODO.  Use flag to onestep?
uint64_t twostep(FILE *file, struct node *node, uint64_t ctx, uint64_t choice,
        bool interrupt, struct state *oldstate, struct context **oldctx){
    // Make a copy of the state
    struct state *sc = new_alloc(struct state);
    memcpy(sc, node->state, sizeof(*sc));
    sc->choosing = 0;

    // Make a copy of the context
    struct context *cc = value_copy(ctx, NULL);
    // diff_dump(file, oldstate, sc, oldctx, cc, node->interrupt);
    if (cc->phase == CTX_END || cc->failure != 0) {
        free(cc);
        return ctx;
    }

    if (interrupt) {
        extern void interrupt_invoke(struct context **pctx);
		assert(cc->trap_pc != 0);
        interrupt_invoke(&cc);
        diff_dump(file, oldstate, sc, oldctx, cc, true, false, 0);
    }

    bool choosing = false;
    struct dict *infloop = NULL;        // infinite loop detector
    for (int loopcnt = 0;; loopcnt++) {
        int pc = cc->pc;

        struct op_info *oi = code[pc].oi;
        if (code[pc].choose) {
            cc->stack[cc->sp - 1] = choice;
            cc->pc++;
        }
        else {
            if (code[pc].breakable) {
                assert(cc->phase != CTX_END);
                cc->phase = CTX_MIDDLE;
            }
            (*oi->op)(code[pc].env, sc, &cc);
        }

        if (cc->phase != CTX_END && cc->failure == 0) {
            if (infloop == NULL) {
                infloop = dict_new(0);
            }

            int stacksize = cc->sp * sizeof(uint64_t);
            int combosize = sizeof(struct combined) + stacksize;
            struct combined *combo = calloc(1, combosize);
            combo->state = *sc;
            memcpy(&combo->context, cc, sizeof(*cc) + stacksize);
            void **p = dict_insert(infloop, combo, combosize);
            free(combo);
            if (*p == (void *) 0) {
                *p = (void *) 1;
            }
            else {
                cc->failure = value_put_atom("infinite loop", 13);
            }
        }

        diff_dump(file, oldstate, sc, oldctx, cc, false, code[pc].choose, choice);
        if (cc->phase == CTX_END || cc->failure != 0 || cc->stopped) {
            break;
        }
        if (cc->pc == pc) {
            fprintf(stderr, ">>> %s\n", oi->name);
        }
        assert(cc->pc != pc);

        /* Peek at the next instruction.
         */
        oi = code[cc->pc].oi;
        if (code[cc->pc].choose) {
            assert(cc->sp > 0);
            if (cc->readonly > 0) {
                ctx_failure(cc, "can't choose in assertion or invariant");
                diff_dump(file, oldstate, sc, oldctx, cc, false, code[pc].choose, choice);
                break;
            }
            uint64_t s = cc->stack[cc->sp - 1];
            if ((s & VALUE_MASK) != VALUE_SET) {
                ctx_failure(cc, "choose operation requires a set");
                diff_dump(file, oldstate, sc, oldctx, cc, false, code[pc].choose, choice);
                break;
            }
            int size;
            uint64_t *vals = value_get(s, &size);
            size /= sizeof(uint64_t);
            if (size == 0) {
                ctx_failure(cc, "choose operation requires a non-empty set");
                diff_dump(file, oldstate, sc, oldctx, cc, false, code[pc].choose, choice);
                break;
            }
            if (size == 1) {
                choice = vals[0];
            }
            else {
                choosing = true;
                break;
            }
        }

        if (cc->phase != CTX_START && cc->atomic == 0 && sc->ctxbag != VALUE_DICT &&
                code[cc->pc].breakable) {
            break;
        }
    }

    ctx = value_put_context(cc);

    free(sc);
    free(cc);

    return ctx;
}

void path_dump(FILE *file, struct node *last, uint64_t ctx, uint64_t choice,
            struct state *oldstate, struct context **oldctx, bool interrupt){
    struct node *node = last;

    last = last->parent;
    if (last->parent == NULL) {
        fprintf(file, "\n");
    }
    else {
        path_dump(file, last, last->before, last->choice, oldstate, oldctx, last->interrupt);
        fprintf(file, ",\n");
    }

    fprintf(file, "    {\n");
    fprintf(file, "      \"id\": \"%d\",\n", node->id);

    /* Find this context in the list of processes.
     */
    int pid;
    for (pid = 0; pid < nprocesses; pid++) {
        if (processes[pid] == ctx) {
            break;
        }
    }
    assert(pid < nprocesses);

    struct context *context = value_get(ctx, NULL);
    assert(context->phase != CTX_END);
    char *name = value_string(context->name);
    char *arg = value_string(context->arg);
    // char *c = value_string(choice);
    fprintf(file, "      \"tid\": \"%d\",\n", pid);
    if (*arg == '(') {
        fprintf(file, "      \"name\": \"%s%s\",\n", name + 1, arg);
    }
    else {
        fprintf(file, "      \"name\": \"%s(%s)\",\n", name + 1, arg);
    }
    // fprintf(file, "      \"choice\": \"%s\",\n", c);
    dumpfirst = true;
    fprintf(file, "      \"microsteps\": [");
    free(name);
    free(arg);
    // free(c);
    memset(*oldctx, 0, sizeof(**oldctx));
    (*oldctx)->pc = context->pc;

    // Recreate the steps
    processes[pid] = twostep(file, last, ctx, choice, interrupt, oldstate, oldctx);
    fprintf(file, "\n      ],\n");

    /* Match each context to a process.
     */
    bool *matched = calloc(nprocesses, sizeof(bool));
    int nctxs;
    uint64_t *ctxs = value_get(node->state->ctxbag, &nctxs);
    nctxs /= sizeof(uint64_t);
    for (int i = 0; i < nctxs; i += 2) {
        assert((ctxs[i] & VALUE_MASK) == VALUE_CONTEXT);
        assert((ctxs[i+1] & VALUE_MASK) == VALUE_INT);
        int cnt = ctxs[i+1] >> VALUE_BITS;
        for (int j = 0; j < cnt; j++) {
            int k;
            for (k = 0; k < nprocesses; k++) {
                if (!matched[k] && processes[k] == ctxs[i]) {
                    matched[k] = true;
                    break;
                }
            }
            if (k == nprocesses) {
                processes = realloc(processes, (nprocesses + 1) * sizeof(uint64_t));
                matched = realloc(matched, (nprocesses + 1) * sizeof(bool));
                processes[nprocesses] = ctxs[i];
                matched[nprocesses] = true;
                nprocesses++;
            }
        }
    }
    free(matched);
  
    print_state(file, node);
    fprintf(file, "    }");
}

static struct stack {
    struct stack *next;
    struct node *node;
} *stack;

static void kosaraju_visit(struct node *node) {
    if (node->visited) {
        return;
    }
    node->visited = true;

    for (struct edge *edge = node->fwd; edge != NULL; edge = edge->next) {
        kosaraju_visit(edge->node);
    }

    // Push node
    struct stack *s = new_alloc(struct stack);
    s->node = node;
    s->next = stack;
    stack = s;
}

static void kosaraju_assign(struct node *node, int component){
    if (node->visited) {
        return;
    }
    node->visited = true;
    node->component = component;
    for (struct edge *edge = node->bwd; edge != NULL; edge = edge->next) {
        kosaraju_assign(edge->node, component);
    }
}

static int find_scc(void){
    for (int i = 0; i < graph_size; i++) {
        kosaraju_visit(graph[i]);
    }

    // make sure all nodes are marked and on the stack
    // while at it clear all the visited flags
    int count = 0;
    for (struct stack *s = stack; s != NULL; s = s->next) {
        assert(s->node->visited);
        s->node->visited = false;
        count++;
    }
    assert(count == graph_size);

    count = 0;
    while (stack != NULL) {
        // Pop
        struct stack *top = stack;
        stack = top->next;
        struct node *next = top->node;
        free(top);

        if (!next->visited) {
            kosaraju_assign(next, count++);
        }
    }
    for (int i = 0; i < graph_size; i++) {
        assert(graph[i]->visited);
    }

    return count;
}

static char *json_string_encode(char *s){
    char *result = malloc(4 * strlen(s)), *p = result;

    while (*s != 0) {
        switch (*s) {
        case '\r':
            *p++ = '\\'; *p++ = 'r';
            break;
        case '\n':
            *p++ = '\\'; *p++ = 'n';
            break;
        case '\f':
            *p++ = '\\'; *p++ = 'f';
            break;
        case '\t':
            *p++ = '\\'; *p++ = 't';
            break;
        case '"':
            *p++ = '\\'; *p++ = '"';
            break;
        case '\\':
            *p++ = '\\'; *p++ = '\\';
            break;
        default:
            *p++ = *s;
        }
        s++;
    }
    *p++ = 0;
    return result;
}
            

static void enum_loc(void *env, const void *key, unsigned int key_size,
                                HASHDICT_VALUE_TYPE value){
    static bool notfirst = false;
    FILE *out = env;

    if (notfirst) {
        fprintf(out, ",\n");
    }
    else {
        notfirst = true;
        fprintf(out, "\n");
    }
    fprintf(out, "    \"%.*s\": { ", key_size, (char *) key);

    struct json_value *jv = value;
    assert(jv->type == JV_MAP);

    struct json_value *file = dict_lookup(jv->u.map, "file", 4);
    assert(file->type == JV_ATOM);
    fprintf(out, "\"file\": \"%.*s\", ", file->u.atom.len, file->u.atom.base);

    struct json_value *line = dict_lookup(jv->u.map, "line", 4);
    assert(line->type == JV_ATOM);
    fprintf(out, "\"line\": \"%.*s\"", line->u.atom.len, line->u.atom.base);

    // parse the line number
    char *cline = malloc(line->u.atom.len + 1);
    strncpy(cline, line->u.atom.base, line->u.atom.len);
    cline[line->u.atom.len] = 0;
    int lineno = atoi(cline);
    free(cline);

    // copy the file name
    char *cfile = malloc(file->u.atom.len + 1);
    strncpy(cfile, file->u.atom.base, file->u.atom.len);
    cfile[file->u.atom.len] = 0;

    // TODO.  Should cache the contents of the file
    FILE *fp = fopen(cfile, "r");
    assert(fp != NULL);
    char buf[1024];
    while (fgets(buf, 1024, fp) != NULL) {
        if (--lineno == 0) {
            buf[1023] = 0;
            int len = strlen(buf);
            if (len > 0 && buf[len - 1] == '\n') {
                buf[len - 1] = 0;
            }
            char *enc = json_string_encode(buf);
            fprintf(out, ", \"code\": \"%s\"", enc);
            free(enc);
            break;
        }
    }
    fclose(fp);
    fprintf(out, " }");
}

int main(int argc, char **argv){
    // printf("Charm v1\n");

    failures = queue_init();

    // initialize modules
    ops_init();
    value_init();

    // open the file
    char *fname = argc == 1 ? "harmony.json" : argv[1];
    FILE *fp = fopen(fname, "r");
    if (fp == NULL) {
        fprintf(stderr, "%s: can't open %s\n", argv[0], fname);
        exit(1);
    }

    // read the file
    json_buf_t buf;
    buf.base = malloc(CHUNKSIZE);
    buf.len = 0;
    int n;
    while ((n = fread(&buf.base[buf.len], 1, CHUNKSIZE, fp)) > 0) {
        buf.len += n;
        buf.base = realloc(buf.base, buf.len + CHUNKSIZE);
    }
    fclose(fp);

    // parse the contents
    struct json_value *jv = json_parse_value(&buf);
    assert(jv->type == JV_MAP);

    // travel through the json code contents to create the code array
    struct json_value *jc = dict_lookup(jv->u.map, "code", 4);
    assert(jc->type == JV_LIST);
    for (int i = 0; i < jc->u.list.nvals; i++) {
        // printf("Line %d\n", i);
        code_get(jc->u.list.vals[i]);
    }

    // Create an initial state
    struct context *init_ctx = new_alloc(struct context);;
    uint64_t nv = value_put_atom("name", 4);
    uint64_t tv = value_put_atom("tag", 3);
    init_ctx->name = value_put_atom("__init__", 8);
    init_ctx->arg = VALUE_DICT;
    init_ctx->this = VALUE_DICT;
    init_ctx->vars = VALUE_DICT;
    init_ctx->atomic = 1;
    ctx_push(&init_ctx, (CALLTYPE_PROCESS << VALUE_BITS) | VALUE_INT);
    ctx_push(&init_ctx, VALUE_DICT);
    struct state *state = new_alloc(struct state);
    state->vars = VALUE_DICT;
    uint64_t ictx = value_put_context(init_ctx);
    state->ctxbag = dict_store(VALUE_DICT, ictx, (1 << VALUE_BITS) | VALUE_INT);
    state->stopbag = VALUE_DICT;
    state->invariants = VALUE_SET;
    processes = new_alloc(uint64_t);
    *processes = ictx;
    nprocesses = 1;

    // Put the initial state in the visited map
    struct dict *visited = dict_new(0);
    struct node *node = new_alloc(struct node);
    node->state = state;
    node->after = ictx;
    graph_add(node);
    void **p = dict_insert(visited, state, sizeof(*state));
    assert(*p == NULL);
    *p = node;

    // Put the initial state on the queue
    struct queue *todo = queue_init();
    queue_enqueue(todo, node);
    enqueued++;

    // Create a context for evaluating invariants
    struct context *inv_ctx = new_alloc(struct context);
    uint64_t inv_nv = value_put_atom("name", 4);
    uint64_t inv_tv = value_put_atom("tag", 3);
    inv_ctx->name = value_put_atom("__invariant__", 13);
    inv_ctx->arg = VALUE_DICT;
    inv_ctx->this = VALUE_DICT;
    inv_ctx->vars = VALUE_DICT;
    inv_ctx->atomic = inv_ctx->readonly = 1;
    inv_ctx->interruptlevel = false;

    void *next;
    int state_counter = 1;
    while (queue_dequeue(todo, &next)) {
        state_counter++;
        dequeued++;

        node = next;
        state = node->state;

        if (state->choosing != 0) {
            assert((state->choosing & VALUE_MASK) == VALUE_CONTEXT);
            if (false) {
                printf("CHOOSING %"PRIx64"\n", state->choosing);
            }

            struct context *cc = value_get(state->choosing, NULL);
            assert(cc != NULL);
            assert(cc->sp > 0);
            uint64_t s = cc->stack[cc->sp - 1];
            assert((s & VALUE_MASK) == VALUE_SET);
            int size;
            uint64_t *vals = value_get(s, &size);
            size /= sizeof(uint64_t);
            assert(size > 0);
            for (int i = 0; i < size; i++) {
                if (false) {
                    printf("NEXT CHOICE %d %d %"PRIx64"\n", i, size, vals[i]);
                }
                onestep(node, state->choosing, vals[i], false, visited, todo, &inv_ctx, false);
                if (false) {
                    printf("NEXT CHOICE DONE\n");
                }
            }
        }
        else {
            int size;
            uint64_t *ctxs = value_get(state->ctxbag, &size);
            size /= sizeof(uint64_t);
            assert(size > 0);
            for (int i = 0; i < size; i += 2) {
                if (false) {
                    printf("NEXT CONTEXT %d %"PRIx64"\n", i, ctxs[i]);
                }
                assert((ctxs[i] & VALUE_MASK) == VALUE_CONTEXT);
                assert((ctxs[i+1] & VALUE_MASK) == VALUE_INT);
                onestep(node, ctxs[i], 0, false, visited, todo, &inv_ctx, false);
                if (false) {
                    printf("NEXT CONTEXT DONE\n");
                }
            }
        }
    }

    printf("#states %d\n", graph_size);

    if (queue_empty(failures)) {
        // find the strongly connected components
        int ncomponents = find_scc();

        // mark the ones that are good
        struct component *components = calloc(ncomponents, sizeof(*components));
        for (int i = 0; i < graph_size; i++) {
            struct node *node = graph[i];
			assert(node->component < ncomponents);
            struct component *comp = &components[node->component];
            if (comp->good) {
                continue;
            }
            if (node->state->ctxbag == VALUE_DICT && node->state->stopbag == VALUE_DICT) {
                comp->good = true;
                continue;
            }
            for (struct edge *edge = node->fwd;
                            edge != NULL && !comp->good; edge = edge->next) {
                if (edge->node->component != node->component) {
                    comp->good = true;
                }
            }
        }

        // now count the nodes that are in bad components
        int nbad = 0;
        for (int i = 0; i < graph_size; i++) {
            struct node *node = graph[i];
            if (!components[node->component].good) {
                nbad++;
                struct failure *f = new_alloc(struct failure);
                f->type = FAIL_TERMINATION;
                f->ctx = node->before;
                f->choice = node->choice;
                f->node = node;
                queue_enqueue(failures, f);
            }
        }

        printf("%d components, %d bad states\n", ncomponents, nbad);
    }

    FILE *out = fopen("charm.json", "w");
    assert(out != NULL);
    fprintf(out, "{\n");

    if (queue_empty(failures)) {
        printf("No issues\n");
        fprintf(out, "  \"issue\": \"No issues\"\n");
        fprintf(out, "}\n");
        exit(0);
    }

    struct failure *bad = NULL;
    while (queue_dequeue(failures, &next)) {
        struct failure *f = next;

        if (bad == NULL || f->node->len < bad->node->len) {
            bad = f;
        }
    }

    switch (bad->type) {
    case FAIL_SAFETY:
        printf("Safety Violation\n");
        fprintf(out, "  \"issue\": \"Safety violation\",\n");
        break;
    case FAIL_INVARIANT:
        printf("Invariant Violation\n");
        fprintf(out, "  \"issue\": \"Invariant violation\",\n");
        break;
    case FAIL_TERMINATION:
        printf("Non-terminating state\n");
        fprintf(out, "  \"issue\": \"Non-terminating state\",\n");
        break;
    default:
        panic("main: bad fail type");
    }

    fprintf(out, "  \"macrosteps\": [");
    struct state oldstate;
	memset(&oldstate, 0, sizeof(oldstate));
    struct context *oldctx = calloc(1, sizeof(*oldctx));
    dumpfirst = true;
    path_dump(out, bad->node, bad->ctx, bad->choice, &oldstate, &oldctx, false);
    fprintf(out, "\n");
    free(oldctx);
    fprintf(out, "  ],\n");

    fprintf(out, "  \"code\": [\n");
    jc = dict_lookup(jv->u.map, "pretty", 6);
    assert(jc->type == JV_LIST);
    for (int i = 0; i < jc->u.list.nvals; i++) {
        struct json_value *next = jc->u.list.vals[i];
        assert(next->type == JV_LIST);
        assert(next->u.list.nvals == 2);
        struct json_value *codestr = next->u.list.vals[0];
        assert(codestr->type == JV_ATOM);
        fprintf(out, "    \"%.*s\"", codestr->u.atom.len, codestr->u.atom.base);
        if (i < jc->u.list.nvals - 1) {
            fprintf(out, ",");
        }
        fprintf(out, "\n");
    }
    fprintf(out, "  ],\n");

    fprintf(out, "  \"explain\": [\n");
    for (int i = 0; i < jc->u.list.nvals; i++) {
        struct json_value *next = jc->u.list.vals[i];
        assert(next->type == JV_LIST);
        assert(next->u.list.nvals == 2);
        struct json_value *codestr = next->u.list.vals[1];
        assert(codestr->type == JV_ATOM);
        fprintf(out, "    \"%.*s\"", codestr->u.atom.len, codestr->u.atom.base);
        if (i < jc->u.list.nvals - 1) {
            fprintf(out, ",");
        }
        fprintf(out, "\n");
    }
    fprintf(out, "  ],\n");

    fprintf(out, "  \"locations\": {");
    jc = dict_lookup(jv->u.map, "locations", 9);
    assert(jc->type == JV_MAP);
    dict_iter(jc->u.map, enum_loc, out);
    fprintf(out, "\n  }\n");

    fprintf(out, "}\n");

    return 0;
}

#include <sys/time.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <unistd.h>
#include <assert.h>

#ifndef HARMONY_COMBINE
#include "global.h"
#endif

#define CHUNK_SIZE	4096

/* Return current time.
 */
double timer_now(void){
    struct timeval now;

    gettimeofday(&now, 0);
	return now.tv_sec + (double) now.tv_usec / 1000000;
}

unsigned long to_ulong(const char *p, int len){
	unsigned long r = 0;

	while (len > 0) {
		assert(isdigit(*p));
		r *= 10;
		r += *p - '0';
		len--;
		p++;
	}
	return r;
}

void panic(char *s){
    fprintf(stderr, "Panic: %s\n", s);
    exit(1);
}

#ifdef notdef
bool file_read(char *filename, /* OUT */ json_buf_t *buf){
	FILE *fp;

	if ((fp = fopen(filename, "r")) == NULL) {
		perror(filename);
		return false;
	}

	*buf = uv_buf_init(0, 0);
	int n;
	for (;;) {
		buf->base = realloc(buf->base, buf->len + CHUNK_SIZE);
		n = fread(buf->base + buf->len, 1, CHUNK_SIZE, fp);
		if (n < CHUNK_SIZE) {
			if (ferror(fp)) {
				perror(filename);
				fclose(fp);
				return false;
			}
			assert(feof(fp));
			assert(n >= 0);
			fclose(fp);
			buf->len += n;
			break;
		}
		assert(n == CHUNK_SIZE);
		buf->len += CHUNK_SIZE;
	}
	return true;
}
#endif // notdef

#ifndef HARMONY_COMBINE
#include "hashdict.h"
#endif

#define hash_func meiyan

static inline uint32_t meiyan(const char *key, int count) {
	typedef uint32_t *P;
	uint32_t h = 0x811c9dc5;
	while (count >= 8) {
		h = (h ^ ((((*(P)key) << 5) | ((*(P)key) >> 27)) ^ *(P)(key + 4))) * 0xad3e7;
		count -= 8;
		key += 8;
	}
	#define tmp h = (h ^ *(uint16_t*)key) * 0xad3e7; key += 2;
	if (count & 4) { tmp tmp }
	if (count & 2) { tmp }
	if (count & 1) { h = (h ^ *key) * 0xad3e7; }
	#undef tmp
	return h ^ (h >> 16);
}

struct keynode *keynode_new(char*k, int l) {
	struct keynode *node = malloc(sizeof(struct keynode));
	node->len = l;
	node->key = malloc(l);
	memcpy(node->key, k, l);
	node->next = 0;
	node->value = 0;
	return node;
}

void keynode_delete(struct keynode *node) {
	free(node->key);
	if (node->next) keynode_delete(node->next);
	free(node);
}

struct dict *dict_new(int initial_size) {
	struct dict *dict = malloc(sizeof(struct dict));
	if (initial_size == 0) initial_size = 1024;
	dict->length = initial_size;
	dict->count = 0;
	dict->table = calloc(sizeof(struct keynode*), initial_size);
	dict->growth_treshold = 2.0;
	dict->growth_factor = 10;
	return dict;
}

void dict_delete(struct dict *dict) {
	for (int i = 0; i < dict->length; i++) {
		if (dict->table[i])
			keynode_delete(dict->table[i]);
	}
	free(dict->table);
	dict->table = 0;
	free(dict);
}

void dict_reinsert_when_resizing(struct dict *dict, struct keynode *k2) {
	int n = hash_func(k2->key, k2->len) % dict->length;
	if (dict->table[n] == 0) {
		dict->table[n] = k2;
		return;
	}
	struct keynode *k = dict->table[n];
	k2->next = k;
	dict->table[n] = k2;
}

void dict_resize(struct dict *dict, int newsize) {
	int o = dict->length;
	struct keynode **old = dict->table;
	dict->table = calloc(sizeof(struct keynode*), newsize);
	dict->length = newsize;
	for (int i = 0; i < o; i++) {
		struct keynode *k = old[i];
		while (k) {
			struct keynode *next = k->next;
			k->next = 0;
			dict_reinsert_when_resizing(dict, k);
			k = next;
		}
	}
	free(old);
}

void *dict_find(struct dict *dict, const void *key, unsigned int keyn) {
	int n = hash_func((const char*)key, keyn) % dict->length;
	if (dict->table[n] == 0) {
		double f = (double)dict->count / (double)dict->length;
		if (f > dict->growth_treshold) {
			dict_resize(dict, dict->length * dict->growth_factor);
			return dict_find(dict, key, keyn);
		}
		dict->table[n] = keynode_new((char*)key, keyn);
		dict->count++;
		return dict->table[n];
	}
	struct keynode *k = dict->table[n];
	while (k) {
		if (k->len == keyn && memcmp(k->key, key, keyn) == 0) {
			return k;
		}
		k = k->next;
	}
	dict->count++;
	struct keynode *k2 = keynode_new((char*)key, keyn);
	k2->next = dict->table[n];
	dict->table[n] = k2;
	return k2;
}

void **dict_insert(struct dict *dict, const void *key, unsigned int keyn){
    struct keynode *k = dict_find(dict, key, keyn);
    return &k->value;
}

void *dict_retrieve(const void *p, int *psize){
    const struct keynode *k = p;
    if (psize != NULL) {
        *psize = k->len;
    }
    return k->key;
}

void *dict_lookup(struct dict *dict, const void *key, unsigned int keyn) {
	int n = hash_func((const char*)key, keyn) % dict->length;
	// __builtin_prefetch(dict->table[n]);
	struct keynode *k = dict->table[n];
	if (!k) return 0;
	while (k) {
		if (k->len == keyn && !memcmp(k->key, key, keyn)) {
			return k->value;
		}
		k = k->next;
	}
	return 0;
}

void dict_iter(struct dict *dict, enumFunc f, void *env) {
	for (int i = 0; i < dict->length; i++) {
		if (dict->table[i] != 0) {
			struct keynode *k = dict->table[i];
			while (k) {
				(*f)(env, k->key, k->len, k->value);
				k = k->next;
			}
		}
	}
}

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <assert.h>

#ifndef HARMONY_COMBINE
#include "global.h"
#endif

#define buf_adv(b)		do { assert((b)->len > 0); (b)->base++; (b)->len--; } while (false)

static void json_map_cleanup(void *env, const void *key, unsigned int keylen, void *val){
	json_value_free(val);
}

void json_value_free(struct json_value *jv){
	switch (jv->type) {
	case JV_ATOM:
		free(jv->u.atom.base);
		break;
	case JV_MAP:
		dict_iter(jv->u.map, json_map_cleanup, jv);
		dict_delete(jv->u.map);
		break;
	case JV_LIST:
		{
			int i;

			for (i = 0; i < jv->u.list.nvals; i++) {
				json_value_free(jv->u.list.vals[i]);
			}
			free(jv->u.list.vals);
		}
		break;
	default:
		assert(0);
	}
	free(jv);
}

static void json_string_add(json_buf_t *buf, char c){
	/* Grow efficiently, doubling at powers of 2.
	 */
	if (((buf->len + 1) & buf->len) == 0) {
		buf->base = realloc(buf->base, (buf->len + 1) * 2);
	}
	buf->base[buf->len++] = c;
}

static void json_skip_blanks(json_buf_t *buf){
	while (buf->len > 0) {
		if (!isspace(*buf->base)) {
			return;
		}
		buf_adv(buf);
	}
}

static bool is_atom_char(char c){
	return isalnum(c) || c == '.' || c == '-' || c == '_' || c == '/';
}

static void json_parse_atom(json_buf_t *buf, json_buf_t *atom){
	assert(buf->len > 0);
	assert(is_atom_char(*buf->base));
	while (buf->len > 0) {
		if (!is_atom_char(*buf->base)) {
			return;
		}
		json_string_add(atom, *buf->base);
		buf_adv(buf);
	}
}

void json_map_append(struct json_value *map, json_buf_t key, struct json_value *jv){
	assert(map->type == JV_MAP);
	void **p = dict_insert(map->u.map, key.base, key.len);
	if (*p != 0) {
		fprintf(stderr, "json_map_append: duplicate key: '%.*s'\n",
							(int) key.len, key.base);
	}
	assert(*p == 0);
	*p = jv;
}

static struct json_value *json_parse_struct(json_buf_t *buf){
	assert(buf->len > 0);
	assert(*buf->base == '{');
	buf_adv(buf);

	struct json_value *jv = new_alloc(struct json_value);
	jv->type = JV_MAP;
	jv->u.map = dict_new(0);
	for (;;) {
		json_skip_blanks(buf);
		assert(buf->len > 0);
		if (*buf->base == '}') {
			buf_adv(buf);
			return jv;
		}

		struct json_value *key = json_parse_value(buf);
		assert(key->type == JV_ATOM);
		json_skip_blanks(buf);
		assert(buf->len > 0);
		assert(*buf->base == '=' || *buf->base == ':');
		buf_adv(buf);
		struct json_value *val = json_parse_value(buf);
		json_map_append(jv, key->u.atom, val);
		json_value_free(key);

		json_skip_blanks(buf);
		assert(buf->len > 0);
		if (*buf->base == ',' || *buf->base == ';') {
			buf_adv(buf);
		}
	}
}

/* Append a value to the list.
 */
void json_list_append(struct json_value *list, struct json_value *jv){
	assert(list->type == JV_LIST);
	list->u.list.vals = realloc(list->u.list.vals,
				(list->u.list.nvals + 1) * sizeof(*list->u.list.vals));
	list->u.list.vals[list->u.list.nvals++] = jv;
}

static struct json_value *json_parse_list(json_buf_t *buf){
	assert(buf->len > 0);
	assert(*buf->base == '[');
	buf_adv(buf);

	struct json_value *jv = new_alloc(struct json_value);
	jv->type = JV_LIST;
	unsigned int index;
	for (index = 0;; index++) {
		json_skip_blanks(buf);
		assert(buf->len > 0);
		if (*buf->base == ']') {
			buf_adv(buf);
			return jv;
		}
		json_list_append(jv, json_parse_value(buf));
		json_skip_blanks(buf);
		assert(buf->len > 0);
		if (*buf->base == ',' || *buf->base == ';') {
			buf_adv(buf);
		}
	}
}

static struct json_value *json_parse_string(json_buf_t *buf){
	assert(buf->len > 0);
	assert(*buf->base == '"' || *buf->base == '\'');
	char delim = *buf->base;
	buf_adv(buf);

	struct json_value *jv = new_alloc(struct json_value);
	jv->type = JV_ATOM;

	while (buf->len > 0) {
		if (*buf->base == '\\') {
			buf_adv(buf);
			assert(buf->len > 0);
			switch (*buf->base) {
			case 0:
				json_string_add(&jv->u.atom, 0);
				break;
			case '\\':
				json_string_add(&jv->u.atom, '\\');
				break;
			case '\'':
				json_string_add(&jv->u.atom, '\'');
				break;
			case '\"':
				json_string_add(&jv->u.atom, '\"');
				break;
			case '\?':
				json_string_add(&jv->u.atom, '\?');
				break;
			case 'a':
				json_string_add(&jv->u.atom, '\a');
				break;
			case 'b':
				json_string_add(&jv->u.atom, '\b');
				break;
			case 'e':
				json_string_add(&jv->u.atom, '\e');
				break;
			case 'f':
				json_string_add(&jv->u.atom, '\f');
				break;
			case 'n':
				json_string_add(&jv->u.atom, '\n');
				break;
			case 'r':
				json_string_add(&jv->u.atom, '\r');
				break;
			case 't':
				json_string_add(&jv->u.atom, '\t');
				break;
			case 'v':
				json_string_add(&jv->u.atom, '\v');
				break;
			default:
				json_string_add(&jv->u.atom, *buf->base);
			}
		}
		else if (*buf->base == delim) {
			buf_adv(buf);
			return jv;
		}
		else {
			json_string_add(&jv->u.atom, *buf->base);
		}
		buf_adv(buf);
	}
	assert(0);
	return 0;
}

struct json_value *json_parse_value(json_buf_t *buf){
	json_skip_blanks(buf);
	assert(buf->len > 0);
	switch (*buf->base) {
	case '{':
		return json_parse_struct(buf);
	case '[':
		return json_parse_list(buf);
	case '"': case '\'':
		return json_parse_string(buf);
	default:
		if (!is_atom_char(*buf->base)) {
			fprintf(stderr, "--> '%.*s'\n", (int) buf->len, buf->base);
		}
		assert(is_atom_char(*buf->base));
		struct json_value *jv = new_alloc(struct json_value);
		jv->type = JV_ATOM;
		json_parse_atom(buf, &jv->u.atom);
		return jv;
	}
}

struct json_value *json_string(char *s, unsigned int len){
	struct json_value *jv = new_alloc(struct json_value);
	jv->type = JV_ATOM;
	jv->u.atom.len = len;
	jv->u.atom.base = malloc(len);
	memcpy(jv->u.atom.base, s, len);
	return jv;
}

static void json_indent(unsigned int ind){
	while (ind > 0) {
		putchar(' ');
		ind--;
	}
}

static void json_dump_ind(struct json_value *jv, unsigned int ind);

static void json_dump_map(void *env, const void *key, unsigned int keylen, void *val){
	unsigned int ind = (size_t) env;
	json_indent(ind);
	printf("%.*s: ", keylen, (char *) key);
	json_dump_ind(val, ind + 2);
}

static void json_dump_string(json_buf_t buf){
	int i;

	/* See if we should quote it.
	 */
	for (i = 0; i < buf.len; i++) {
		if (!is_atom_char(buf.base[i])) {
			break;
		}
	}
	if (i == buf.len) {
		printf("%.*s\n", (int) buf.len, buf.base);
		return;
	}

	putchar('"');
	for (i = 0; i < buf.len; i++) {
		switch (buf.base[i]) {
		case 0:
			printf("\\0");
			break;
		case '"':
			printf("\\\"");
			break;
		default:
			putchar(buf.base[i]);
		}
	}
	printf("\"\n");
}

static void json_dump_ind(struct json_value *jv, unsigned int ind){
	switch (jv->type) {
	case JV_ATOM:
		json_dump_string(jv->u.atom);
		break;
	case JV_MAP:
		printf("{\n");
		dict_iter(jv->u.map, json_dump_map, (void *) (size_t) (ind + 2));
		json_indent(ind); printf("}\n");
		break;
	case JV_LIST:
		printf("[\n");
		int i;
		for (i = 0; i < jv->u.list.nvals; i++) {
			json_indent(ind + 2);
			json_dump_ind(jv->u.list.vals[i], ind + 4);
		}
		json_indent(ind); printf("]\n");
		break;
	default:
		assert(0);
	}
}

void json_dump(struct json_value *jv){
	json_dump_ind(jv, 0);
}

/* Allocate and get a string out of an atom identified by string key.
 */
char *json_lookup_string(struct dict *map, char *key){
	struct json_value *jv = dict_lookup(map, key, strlen(key));
	if (jv == 0) {
		return 0;
	}
	assert(jv->type == JV_ATOM);
	char *p = malloc(jv->u.atom.len + 1);
	memcpy(p, jv->u.atom.base, jv->u.atom.len);
	p[jv->u.atom.len] = 0;
	return p;
}

/* Find a map inside the map by string key.
 */
struct json_value *json_lookup_map(struct dict *map, char *key){
	struct json_value *jv = dict_lookup(map, key, strlen(key));
	if (jv == 0) {
		return 0;
	}
	assert(jv->type == JV_MAP);
	return jv;
}

/* Find a json_value (can be either a JV_MAP or JV_ATOM) 
 * inside the map by string key.
 */
struct json_value *json_lookup_value(struct dict *map, char *key){
	struct json_value *jv = dict_lookup(map, key, strlen(key));
	if (jv == 0) {
		return 0;
	}
	return jv;
}

#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif

#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <inttypes.h>
#include <ctype.h>
#include <assert.h>

#ifndef HARMONY_COMBINE
#include "global.h"
#endif

#define MAX_ARITY   10

struct val_info {
    int size, index;
    uint64_t *vals;
};

struct f_info {
    char *name;
    uint64_t (*f)(struct state *state, struct context *ctx, uint64_t *args, int n);
};

struct var_tree {
    enum { VT_NAME, VT_TUPLE } type;
    union {
        uint64_t name;
        struct {
            int n;
            struct var_tree **elements;
        } tuple;
    } u;
};

static struct dict *ops_map, *f_map;
extern struct code *code;

uint64_t ctx_failure(struct context *ctx, char *fmt, ...){
    char *r;
    va_list args;

    assert(ctx->failure == 0);

    va_start(args, fmt);
    if (vasprintf(&r, fmt, args) < 0) {
		panic("ctx_failure: vasprintf");
	}
    va_end(args);

    ctx->failure = value_put_atom(r, strlen(r));
    free(r);

    return 0;
}

uint64_t var_match_rec(struct context *ctx, struct var_tree *vt,
                            uint64_t arg, uint64_t vars){
    switch (vt->type) {
    case VT_NAME:
        return dict_store(vars, vt->u.name, arg);
    case VT_TUPLE:
        if ((arg & VALUE_MASK) != VALUE_DICT) {
            return ctx_failure(ctx, "match: expected a tuple");
        }
        if (arg == VALUE_DICT) {
            if (vt->u.tuple.n != 0) {
                return ctx_failure(ctx, "match: expected a non-empty tuple");
            }
            return vars;
        }
        if (vt->u.tuple.n == 0) {
            return ctx_failure(ctx, "match: expected an empty tuple");
        }
        int size;
        uint64_t *vals = value_get(arg, &size);
        size /= 2 * sizeof(uint64_t);
        if (vt->u.tuple.n != size) {
            return ctx_failure(ctx, "match: tuple size mismatch");
        }
        for (int i = 0; i < size; i++) {
            if (vals[2*i] != ((i << VALUE_BITS) | VALUE_INT)) {
                return ctx_failure(ctx, "match: not a tuple");
            }
            vars = var_match_rec(ctx, vt->u.tuple.elements[i], vals[2*i+1], vars);
        }
        return vars;
    default:
        panic("var_tree_rec: bad vartree type");
        return 0;
    }
}

void var_match(struct context *ctx, struct var_tree *vt, uint64_t arg){
    uint64_t vars = var_match_rec(ctx, vt, arg, ctx->vars);
    if (ctx->failure == 0) {
        ctx->vars = vars;
    }
}

// for debugging only
void var_dump(struct var_tree *vt){
    switch (vt->type) {
    case VT_NAME:
        printf("%"PRIx64"", vt->u.name);
        break;
    case VT_TUPLE:
        printf("(");
        for (int i = 0; i < vt->u.tuple.n; i++) {
            printf(" ");
            var_dump(vt->u.tuple.elements[i]);
        }
        printf(" )");
        break;
    default:
        panic("var_dump: bad vartree type");
    }
}

static void skip_blanks(char *s, int len, int *index){
    while (*index < len && s[*index] == ' ') {
        (*index)++;
    }
}

struct var_tree *var_parse(char *s, int len, int *index){
    assert(*index < len);
    struct var_tree *vt = new_alloc(struct var_tree);

    skip_blanks(s, len, index);
    if (s[*index] == '(') {
        vt->type = VT_TUPLE;
        (*index)++;
        skip_blanks(s, len, index);
        assert(*index < len);
        if (s[*index] == ')') {
            (*index)++;
        }
        else {
            while (true) {
                struct var_tree *elt = var_parse(s, len, index);
                vt->u.tuple.elements = realloc(vt->u.tuple.elements,
                        (vt->u.tuple.n + 1) * sizeof(elt));
                vt->u.tuple.elements[vt->u.tuple.n++] = elt;
                skip_blanks(s, len, index);
                assert(*index < len);
                if (s[*index] == ')') {
                    (*index)++;
                    break;
                }
                assert(s[*index] == ',');
                (*index)++;
            }
        }
    }
    else if (s[*index] == '[') {
        vt->type = VT_TUPLE;
        (*index)++;
        panic("var_parse: TODO");
    }
    else {
        vt->type = VT_NAME;
        int i = *index;
        assert(isalpha(s[i]) || s[i] == '_' || s[i] == '$');
        i++;
        while (i < len && (isalpha(s[i]) || s[i] == '_' || isdigit(s[i]))) {
            i++;
        }
        vt->u.name = value_put_atom(&s[*index], i - *index);
        *index = i;
    }
    return vt;
}

void ctx_push(struct context **pctx, uint64_t v){
	assert(*pctx != NULL);
    struct context *ctx = realloc(*pctx, sizeof(struct context) + 
                ((*pctx)->sp + 1) * sizeof(uint64_t));

    ctx->stack[ctx->sp++] = v;
    *pctx = ctx;
}

uint64_t ctx_pop(struct context **pctx){
    struct context *ctx = *pctx;

    assert(ctx->sp > 0);
    return ctx->stack[--ctx->sp];
}

void interrupt_invoke(struct context **pctx){
    assert(!(*pctx)->interruptlevel);
	assert(((*pctx)->trap_pc & VALUE_MASK) == VALUE_PC);
    ctx_push(pctx, ((*pctx)->pc << VALUE_BITS) | VALUE_PC);
    ctx_push(pctx, (CALLTYPE_INTERRUPT << VALUE_BITS) | VALUE_INT);
    ctx_push(pctx, (*pctx)->trap_arg);
    (*pctx)->pc = (*pctx)->trap_pc >> VALUE_BITS;
    (*pctx)->trap_pc = 0;
    (*pctx)->interruptlevel = true;
}

uint64_t dict_load(uint64_t dict, uint64_t key){
    assert((dict & VALUE_MASK) == VALUE_DICT);

    uint64_t *vals;
    int size;
    if (dict == VALUE_DICT) {
        vals = NULL;
        size = 0;
    }
    else {
        vals = value_get(dict & ~VALUE_MASK, &size);
        assert(size % 2 == 0);
        size /= sizeof(uint64_t);
    }

    int i;
    for (i = 0; i < size; i += 2) {
        if (vals[i] == key) {
            return vals[i + 1];
        }
        /* 
            if (value_cmp(vals[i], key) > 0) {
                break;
            }
        */
    }

	printf("CAN'T FIND %s in %s\n", value_string(key), value_string(dict));
    panic("dict_load");
    return 0;
}

uint64_t dict_remove(uint64_t dict, uint64_t key){
    assert((dict & VALUE_MASK) == VALUE_DICT);

    uint64_t *vals;
    int size;
    if (dict == VALUE_DICT) {
        return VALUE_DICT;
    }
    vals = value_get(dict & ~VALUE_MASK, &size);
    size /= sizeof(uint64_t);
    assert(size % 2 == 0);

    if (size == 2) {
        return vals[0] == key ? VALUE_DICT : dict;
    }

    int i;
    for (i = 0; i < size; i += 2) {
        if (vals[i] == key) {
            int n = (size - 2) * sizeof(uint64_t);
            uint64_t *copy = malloc(n);
            memcpy(copy, vals, i * sizeof(uint64_t));
            memcpy(&copy[i], &vals[i+2],
                (size - i - 2) * sizeof(uint64_t));
            uint64_t v = value_put_dict(copy, n);
            free(copy);
            return v;
        }
        /* 
            if (value_cmp(vals[i], key) > 0) {
                assert(false);
            }
        */
    }

    return dict;
}

bool dict_tryload(uint64_t dict, uint64_t key, uint64_t *result){
    assert((dict & VALUE_MASK) == VALUE_DICT);

    uint64_t *vals;
    int size;
    if (dict == VALUE_DICT) {
        vals = NULL;
        size = 0;
    }
    else {
        vals = value_get(dict & ~VALUE_MASK, &size);
        size /= sizeof(uint64_t);
        assert(size % 2 == 0);
    }

    int i;
    for (i = 0; i < size; i += 2) {
        if (vals[i] == key) {
            *result = vals[i + 1];
            return true;
        }
        /* 
            if (value_cmp(vals[i], key) > 0) {
                break;
            }
        */
    }
    return false;
}

// Store key:value in the given dictionary and returns its value code
uint64_t dict_store(uint64_t dict, uint64_t key, uint64_t value){
    assert((dict & VALUE_MASK) == VALUE_DICT);

    if (false) {
        char *p = value_string(value);
        char *q = value_string(dict);
        char *r = value_string(key);
        printf("DICT_STORE %s %s %s\n", p, q, r);
        free(p);
        free(q);
        free(r);
    }

    uint64_t *vals;
    int size;
    if (dict == VALUE_DICT) {
        vals = NULL;
        size = 0;
    }
    else {
        vals = value_get(dict & ~VALUE_MASK, &size);
        size /= sizeof(uint64_t);
        assert(size % 2 == 0);
    }

    int i;
    for (i = 0; i < size; i += 2) {
        if (vals[i] == key) {
            if (vals[i + 1] == value) {
                return dict;
            }
            int n = size * sizeof(uint64_t);
            uint64_t *copy = malloc(n);
            memcpy(copy, vals, n);
            copy[i + 1] = value;
            uint64_t v = value_put_dict(copy, n);
            free(copy);
            return v;
        }
        if (value_cmp(vals[i], key) > 0) {
            break;
        }
    }

    int n = (size + 2) * sizeof(uint64_t);
    uint64_t *nvals = malloc(n);
    memcpy(nvals, vals, i * sizeof(uint64_t));
    nvals[i] = key;
    nvals[i+1] = value;
    memcpy(&nvals[i+2], &vals[i], (size - i) * sizeof(uint64_t));
    uint64_t v = value_put_dict(nvals, n);
    free(nvals);
    return v;
}

bool ind_tryload(uint64_t dict, uint64_t *indices, int n, uint64_t *result){
    uint64_t d = dict;
    for (int i = 0; i < n; i++) {
        if (!dict_tryload(d, indices[i], &d)) {
            return false;
        }
    }
    *result = d;
    return true;
}

bool ind_trystore(uint64_t dict, uint64_t *indices, int n, uint64_t value, uint64_t *result){
    assert((dict & VALUE_MASK) == VALUE_DICT);
    assert(n > 0);

    if (n == 1) {
        *result = dict_store(dict, indices[0], value);
        return true;
    }
    else {
        uint64_t *vals;
        int size;
        if (dict == VALUE_DICT) {
            vals = NULL;
            size = 0;
        }
        else {
            vals = value_get(dict & ~VALUE_MASK, &size);
            assert(size % 2 == 0);
            size /= sizeof(uint64_t);
        }

        int i;
        for (i = 0; i < size; i += 2) {
            if (vals[i] == indices[0]) {
                uint64_t d = vals[i+1];
                assert((d & VALUE_MASK) == VALUE_DICT);
                uint64_t nd;
                if (!ind_trystore(d, indices + 1, n - 1, value, &nd)) {
                    return false;
                }
                if (d == nd) {
                    *result = dict;
                    return true;
                }
                int n = size * sizeof(uint64_t);
                uint64_t *copy = malloc(n);
                memcpy(copy, vals, n);
                copy[i + 1] = nd;
                uint64_t v = value_put_dict(copy, n);
                free(copy);
                *result = v;
                return true;
            }
            /* 
                if (value_cmp(vals[i], key) > 0) {
                    assert(false);
                }
            */
        }
    }
    return false;
}

uint64_t ind_remove(uint64_t dict, uint64_t *indices, int n){
    assert((dict & VALUE_MASK) == VALUE_DICT);
    assert(n > 0);

    if (n == 1) {
        return dict_remove(dict, indices[0]);
    }
    else {
        uint64_t *vals;
        int size;
        if (dict == VALUE_DICT) {
            vals = NULL;
            size = 0;
        }
        else {
            vals = value_get(dict & ~VALUE_MASK, &size);
            assert(size % 2 == 0);
            size /= sizeof(uint64_t);
        }

        int i;
        for (i = 0; i < size; i += 2) {
            if (vals[i] == indices[0]) {
                uint64_t d = vals[i+1];
                assert((d & VALUE_MASK) == VALUE_DICT);
                uint64_t nd = ind_remove(d, indices + 1, n - 1);
                if (d == nd) {
                    return dict;
                }
                int n = size * sizeof(uint64_t);
                uint64_t *copy = malloc(n);
                memcpy(copy, vals, n);
                copy[i + 1] = nd;
                uint64_t v = value_put_dict(copy, n);
                free(copy);
                return v;
            }
            /* 
                if (value_cmp(vals[i], key) > 0) {
                    assert(false);
                }
            */
        }

        panic("ind_remove");        // TODO.  Should this return orig dict?
        return 0;
    }
}

void op_Address(const void *env, struct state *state, struct context **pctx){
    uint64_t index = ctx_pop(pctx);
    uint64_t av = ctx_pop(pctx);
    if ((av & VALUE_MASK) != VALUE_ADDRESS) {
        ctx_failure(*pctx, "not an address");
        return;
    }
    if (av == VALUE_ADDRESS) {
        ctx_failure(*pctx, "None unexpected");
        return;
    }
    if (false) {
        printf("ADDRESS %"PRIx64"\n", index);
    }

    int size;
    uint64_t *indices = value_copy(av, &size);
    indices = realloc(indices, size + sizeof(index));
    indices[size / sizeof(uint64_t)] = index;
    ctx_push(pctx, value_put_address(indices, size + sizeof(index)));
    free(indices);
    (*pctx)->pc++;
}

void op_Apply(const void *env, struct state *state, struct context **pctx){
    uint64_t method = ctx_pop(pctx);
    uint64_t e = ctx_pop(pctx);

    uint64_t type = method & VALUE_MASK;
    switch (type) {
    case VALUE_DICT:
        {
            uint64_t v;
            if (!dict_tryload(method, e, &v)) {
                char *m = value_string(method);
                char *x = value_string(e);
                ctx_failure(*pctx, "Bad index %s: not in %s", x, m);
                free(m);
                free(x);
                return;
            }
            ctx_push(pctx, v);
            (*pctx)->pc++;
        }
        return;
    case VALUE_PC:
        ctx_push(pctx, (((*pctx)->pc + 1) << VALUE_BITS) | VALUE_PC);
        ctx_push(pctx, (CALLTYPE_NORMAL << VALUE_BITS) | VALUE_INT);
        ctx_push(pctx, e);
        assert((method >> VALUE_BITS) != (*pctx)->pc);
        (*pctx)->pc = method >> VALUE_BITS;
        return;
    default:
        ctx_failure(*pctx, "Can only apply to methods or dictionaries");
    }
}

void op_Assert(const void *env, struct state *state, struct context **pctx){
    uint64_t v = ctx_pop(pctx);
    if ((v & VALUE_MASK) != VALUE_BOOL) {
        ctx_failure(*pctx, "assert can only be applied to bool values");
    }
    if (v == VALUE_FALSE) {
        ctx_failure(*pctx, "Harmony assertion failed");
    }
    else {
        (*pctx)->pc++;
    }
}

void op_Assert2(const void *env, struct state *state, struct context **pctx){
    uint64_t e = ctx_pop(pctx);
    uint64_t v = ctx_pop(pctx);
    if ((v & VALUE_MASK) != VALUE_BOOL) {
        ctx_failure(*pctx, "assert2 can only be applied to bool values");
    }
    if (v == VALUE_FALSE) {
        char *p = value_string(e);
        ctx_failure(*pctx, "Harmony assertion failed: %s", p);
        free(p);
    }
    else {
        (*pctx)->pc++;
    }
}

void op_AtomicDec(const void *env, struct state *state, struct context **pctx){
    struct context *ctx = *pctx;

    assert(ctx->atomic > 0);
    ctx->atomic--;
    ctx->pc++;
}

void op_AtomicInc(const void *env, struct state *state, struct context **pctx){
    struct context *ctx = *pctx;

    ctx->atomic++;
    ctx->pc++;
}

void op_Choose(const void *env, struct state *state, struct context **pctx){
    panic("op_Choose: should not be called");
}

void op_Continue(const void *env, struct state *state, struct context **pctx){
    (*pctx)->pc++;
}

void op_Cut(const void *env, struct state *state, struct context **pctx){
    const struct env_Cut *ec = env;
    struct context *ctx = *pctx;

    uint64_t v = dict_load(ctx->vars, ec->set);
    if ((v & VALUE_MASK) == VALUE_SET) {
        assert(v != VALUE_SET);
        void *p = (void *) (v & ~VALUE_MASK);

        int size;
        uint64_t *vals = dict_retrieve(p, &size);
        assert(size > 0);

        ctx->vars = dict_store(ctx->vars, ec->set, value_put_set(&vals[1], size - sizeof(uint64_t)));
        ctx->vars = dict_store(ctx->vars, ec->var, vals[0]);
        (*pctx)->pc++;
        return;
    }
    if ((v & VALUE_MASK) == VALUE_DICT) {
        assert(v != VALUE_DICT);
        void *p = (void *) (v & ~VALUE_MASK);

        int size;
        uint64_t *vals = dict_retrieve(p, &size);
        assert(size > 0);

        ctx->vars = dict_store(ctx->vars, ec->set, value_put_dict(&vals[2], size - 2 * sizeof(uint64_t)));
        ctx->vars = dict_store(ctx->vars, ec->var, vals[1]);
        (*pctx)->pc++;
        return;
    }
    panic("op_Cut: not a set or dict");
}

void op_Del(const void *env, struct state *state, struct context **pctx){
    assert((state->vars & VALUE_MASK) == VALUE_DICT);
    uint64_t av = ctx_pop(pctx);
    assert((av & VALUE_MASK) == VALUE_ADDRESS);
    assert(av != VALUE_ADDRESS);

    int size;
    uint64_t *indices = value_get(av, &size);
    size /= sizeof(uint64_t);
    state->vars = ind_remove(state->vars, indices, size);

    (*pctx)->pc++;
}

void op_DelVar(const void *env, struct state *state, struct context **pctx){
    const struct env_DelVar *ed = env;
    (*pctx)->vars = dict_remove((*pctx)->vars, ed->name);
    (*pctx)->pc++;
}

void op_Dup(const void *env, struct state *state, struct context **pctx){
    uint64_t v = ctx_pop(pctx);
    ctx_push(pctx, v);
    ctx_push(pctx, v);
    (*pctx)->pc++;
}

void op_Frame(const void *env, struct state *state, struct context **pctx){
    static uint64_t result = 0;

    if (result == 0) {
        result = value_put_atom("result", 6);
    }

    const struct env_Frame *ef = env;
    if (false) {
        printf("FRAME %d %d %"PRIx64" ", (*pctx)->pc, (*pctx)->sp, ef->name);
        var_dump(ef->args);
        printf("\n");
    }

    // peek at argument
    uint64_t arg = ctx_pop(pctx);
    ctx_push(pctx, arg);

    uint64_t oldvars = (*pctx)->vars;

    // try to match against parameters
    (*pctx)->vars = dict_store(VALUE_DICT, result, VALUE_DICT);
    var_match(*pctx, ef->args, arg);
    if ((*pctx)->failure != 0) {
        return;
    }
 
    ctx_push(pctx, oldvars);
    ctx_push(pctx, ((*pctx)->fp << VALUE_BITS) | VALUE_INT);

    struct context *ctx = *pctx;
    ctx->fp = ctx->sp;
    ctx->pc += 1;
}

void op_Go(const void *env, struct state *state, struct context **pctx){
    uint64_t ctx = ctx_pop(pctx);
    if ((ctx & VALUE_MASK) != VALUE_CONTEXT) {
        ctx_failure(*pctx, "Go: not a context");
        return;
    }

    // Remove from stopbag if it's there
    uint64_t count;
    if (dict_tryload(state->stopbag, ctx, &count)) {
        assert((count & VALUE_MASK) == VALUE_INT);
        assert(count != VALUE_INT);
        count -= 1 << VALUE_BITS;
        if (count != VALUE_INT) {
            state->stopbag = dict_store(state->stopbag, ctx, count);
        }
        else {
            state->stopbag = dict_remove(state->stopbag, ctx);
        }
    }

    uint64_t result = ctx_pop(pctx);
    struct context *copy = value_copy(ctx, NULL);
    ctx_push(&copy, result);
    copy->stopped = false;
    uint64_t v = value_put_context(copy);
    free(copy);
    state->ctxbag = bag_add(state->ctxbag, v);
    (*pctx)->pc++;
}

void op_IncVar(const void *env, struct state *state, struct context **pctx){
    const struct env_IncVar *ei = env;
    struct context *ctx = *pctx;

    assert((ctx->vars & VALUE_MASK) == VALUE_DICT);

    uint64_t v = dict_load(ctx->vars, ei->name);
    assert((v & VALUE_MASK) == VALUE_INT);
    v += 1 << VALUE_BITS;
    ctx->vars = dict_store(ctx->vars, ei->name, v);
    (*pctx)->pc++;
}

void op_Invariant(const void *env, struct state *state, struct context **pctx){
    const struct env_Invariant *ei = env;

    assert((state->invariants & VALUE_MASK) == VALUE_SET);
    int size;
    uint64_t *vals;
    if (state->invariants == VALUE_SET) {
        size = 0;
        vals = NULL;
    }
    else {
        vals = value_get(state->invariants, &size);
    }
    vals = realloc(vals, size + sizeof(uint64_t));
    * (uint64_t *) ((char *) vals + size) = ((*pctx)->pc << VALUE_BITS) | VALUE_PC;
    state->invariants = value_put_set(vals, size + sizeof(uint64_t));
    (*pctx)->pc += ei->cnt + 1;
}

int invariant_cnt(const void *env){
    const struct env_Invariant *ei = env;

    return ei->cnt;
}

void op_Jump(const void *env, struct state *state, struct context **pctx){
    const struct env_Jump *ej = env;

    if (false) {
        printf("JUMP %d\n", ej->pc);
    }
    (*pctx)->pc = ej->pc;
}

void op_JumpCond(const void *env, struct state *state, struct context **pctx){
    const struct env_JumpCond *ej = env;

    if (false) {
        printf("JUMPCOND %d\n", ej->pc);
    }
    uint64_t v = ctx_pop(pctx);
    if (v == ej->cond) {
        assert((*pctx)->pc != ej->pc);
        (*pctx)->pc = ej->pc;
    }
    else {
        (*pctx)->pc++;
    }
}

void op_Load(const void *env, struct state *state, struct context **pctx){
    const struct env_Load *el = env;

    assert((state->vars & VALUE_MASK) == VALUE_DICT);

    uint64_t v;
    if (el == 0) {
        uint64_t av = ctx_pop(pctx);
        assert((av & VALUE_MASK) == VALUE_ADDRESS);
        assert(av != VALUE_ADDRESS);

        int size;
        uint64_t *indices = value_get(av, &size);
        size /= sizeof(uint64_t);

        if (!ind_tryload(state->vars, indices, size, &v)) {
            char *x = indices_string(indices, size);
            ctx_failure(*pctx, "Load: unknown address %s", x);
            free(x);
            return;
        }
        ctx_push(pctx, v);
    }
    else {
        if (!ind_tryload(state->vars, el->indices, el->n, &v)) {
            char *x = indices_string(el->indices, el->n);
            ctx_failure(*pctx, "Load: unknown variable %s", x);
            free(x);
            return;
        }
        ctx_push(pctx, v);
    }
    (*pctx)->pc++;
}

void op_LoadVar(const void *env, struct state *state, struct context **pctx){
    const struct env_LoadVar *el = env;
    assert(((*pctx)->vars & VALUE_MASK) == VALUE_DICT);

    uint64_t v;
    if (el == NULL) {
        uint64_t av = ctx_pop(pctx);
        assert((av & VALUE_MASK) == VALUE_ADDRESS);
        assert(av != VALUE_ADDRESS);

        int size;
        uint64_t *indices = value_get(av, &size);
        size /= sizeof(uint64_t);

        if (!ind_tryload((*pctx)->vars, indices, size, &v)) {
            ctx_failure(*pctx, "Loadvar: unknown address");
            return;
        }
        ctx_push(pctx, v);
    }
    else {
        if (!dict_tryload((*pctx)->vars, el->name, &v)) {
            ctx_failure(*pctx, "Loadvar: unknown variable");
            return;
        }
        ctx_push(pctx, v);
    }
    (*pctx)->pc++;
}

void op_Move(const void *env, struct state *state, struct context **pctx){
    const struct env_Move *em = env;
    struct context *ctx = *pctx;
    int offset = ctx->sp - em->offset;

    uint64_t v = ctx->stack[offset];
    memmove(&ctx->stack[offset], &ctx->stack[offset + 1],
                (em->offset - 1) * sizeof(uint64_t));
    ctx->stack[ctx->sp - 1] = v;
    ctx->pc++;
}

void op_Nary(const void *env, struct state *state, struct context **pctx){
    const struct env_Nary *en = env;
    uint64_t args[MAX_ARITY];

    for (int i = 0; i < en->arity; i++) {
        args[i] = ctx_pop(pctx);
    }
    uint64_t result = (*en->fi->f)(state, *pctx, args, en->arity);
    if ((*pctx)->failure == 0) {
        ctx_push(pctx, result);
        (*pctx)->pc++;
    }
}

void op_Pop(const void *env, struct state *state, struct context **pctx){
    assert((*pctx)->sp > 0);
    (*pctx)->sp--;
    (*pctx)->pc++;
}

void op_Push(const void *env, struct state *state, struct context **pctx){
    const struct env_Push *ep = env;

    if (false) {
        char *p = value_string(ep->value);
        printf("PUSH %s\n", p);
        free(p);
    }

    ctx_push(pctx, ep->value);
    (*pctx)->pc++;
}

void op_ReadonlyDec(const void *env, struct state *state, struct context **pctx){
    struct context *ctx = *pctx;

    assert(ctx->readonly > 0);
    ctx->readonly--;
    ctx->pc++;
}

void op_ReadonlyInc(const void *env, struct state *state, struct context **pctx){
    struct context *ctx = *pctx;

    ctx->readonly++;
    ctx->pc++;
}

void op_Return(const void *env, struct state *state, struct context **pctx){
    if ((*pctx)->sp == 0) {     // __init__    TODO: no longer the case
        assert(false);
        (*pctx)->phase = CTX_END;
        if (false) {
            printf("RETURN INIT\n");
        }
    }
    else {
        uint64_t result = dict_load((*pctx)->vars, value_put_atom("result", 6));
        uint64_t fp = ctx_pop(pctx);
        if ((fp & VALUE_MASK) != VALUE_INT) {
            printf("XXX %d %d %s\n", (*pctx)->pc, (*pctx)->sp, value_string(fp));
            ctx_failure(*pctx, "XXX");
            return;
            // exit(1);
        }
        assert((fp & VALUE_MASK) == VALUE_INT);
        (*pctx)->fp = fp >> VALUE_BITS;
        (*pctx)->vars = ctx_pop(pctx);
        assert(((*pctx)->vars & VALUE_MASK) == VALUE_DICT);
        (void) ctx_pop(pctx);   // argument saved for stack trace
        if ((*pctx)->sp == 0) {     // __init__
            (*pctx)->phase = CTX_END;
            if (false) {
                printf("RETURN INIT\n");
            }
            return;
        }
        uint64_t calltype = ctx_pop(pctx);
        assert((calltype & VALUE_MASK) == VALUE_INT);
        switch (calltype >> VALUE_BITS) {
        case CALLTYPE_PROCESS:
            (*pctx)->phase = CTX_END;
            break;
        case CALLTYPE_NORMAL:
            {
                uint64_t pc = ctx_pop(pctx);
                assert((pc & VALUE_MASK) == VALUE_PC);
                pc >>= VALUE_BITS;
                assert(pc != (*pctx)->pc);
                ctx_push(pctx, result);
                (*pctx)->pc = pc;
            }
            break;
		case CALLTYPE_INTERRUPT:
			assert((*pctx)->interruptlevel);
			(*pctx)->interruptlevel = false;
			uint64_t pc = ctx_pop(pctx);
			assert((pc & VALUE_MASK) == VALUE_PC);
			pc >>= VALUE_BITS;
			assert(pc != (*pctx)->pc);
			(*pctx)->pc = pc;
			break;
        default:
            panic("op_Return: bad call type");
        }
    }
}

// sort two key/value pairs
static int q_kv_cmp(const void *e1, const void *e2){
    const uint64_t *kv1 = (const uint64_t *) e1;
    const uint64_t *kv2 = (const uint64_t *) e2;

    int k = value_cmp(kv1[0], kv2[0]);
    if (k != 0) {
        return k;
    }
    return value_cmp(kv1[1], kv2[1]);
}

static int q_value_cmp(const void *v1, const void *v2){
    return value_cmp(* (const uint64_t *) v1, * (const uint64_t *) v2);
}

// Sort the resulting set and remove duplicates
static int sort(uint64_t *vals, int n){
    qsort(vals, n, sizeof(uint64_t), q_value_cmp);

    uint64_t *p = vals, *q = vals + 1;
    for (int i = 1; i < n; i++, q++) {
        if (*q != *p) {
            *++p = *q;
        }
    }
    p++;
    return p - vals;
}

void op_SetIntLevel(const void *env, struct state *state, struct context **pctx){
	bool oldlevel = (*pctx)->interruptlevel;
	uint64_t newlevel =  ctx_pop(pctx);
    if ((newlevel & VALUE_MASK) != VALUE_BOOL) {
        ctx_failure(*pctx, "setintlevel can only be set to a boolean");
        return;
    }
    (*pctx)->interruptlevel = newlevel >> VALUE_BITS;
	ctx_push(pctx, (oldlevel << VALUE_BITS) | VALUE_BOOL);
    (*pctx)->pc++;
}

uint64_t bag_add(uint64_t bag, uint64_t v){
    uint64_t count;
    if (dict_tryload(bag, v, &count)) {
        assert((count & VALUE_MASK) == VALUE_INT);
        assert(count != VALUE_INT);
        count += 1 << VALUE_BITS;
        return dict_store(bag, v, count);
    }
    else {
        return dict_store(bag, v, (1 << VALUE_BITS) | VALUE_INT);
    }
}

void op_Spawn(const void *env, struct state *state, struct context **pctx){
    extern int code_len;

    uint64_t pc = ctx_pop(pctx);
    if ((pc & VALUE_MASK) != VALUE_PC) {
        ctx_failure(*pctx, "spawn: not a method");
        return;
    }
    pc >>= VALUE_BITS;

    assert(pc < code_len);
    assert(strcmp(code[pc].oi->name, "Frame") == 0);
    uint64_t arg = ctx_pop(pctx);
    uint64_t this = ctx_pop(pctx);
    if (false) {
        printf("SPAWN %"PRIx64" %"PRIx64" %"PRIx64"\n", pc, arg, this);
    }

    struct context *ctx = new_alloc(struct context);

    const struct env_Frame *ef = code[pc].env;
    ctx->name = ef->name;
    ctx->arg = arg;
    ctx->this = this;
    ctx->entry = (pc << VALUE_BITS) | VALUE_PC;
    ctx->pc = pc;
    ctx->vars = VALUE_DICT;
    ctx->interruptlevel = VALUE_FALSE;
    ctx_push(&ctx, (CALLTYPE_PROCESS << VALUE_BITS) | VALUE_INT);
    ctx_push(&ctx, arg);
    uint64_t v = value_put_context(ctx);

    state->ctxbag = bag_add(state->ctxbag, v);

    if (false) {
        char *p = value_string(state->ctxbag);
        printf("SPAWN --> %s\n", p);
        free(p);
    }

    (*pctx)->pc++;
}

void op_Split(const void *env, struct state *state, struct context **pctx){
    const struct env_Split *es = env;

    uint64_t v = ctx_pop(pctx);
    uint64_t type = v & VALUE_MASK;
    if (type != VALUE_DICT && type != VALUE_SET) {
        ctx_failure(*pctx, "Can only split tuples or sets");
        return;
    }
    if (v == VALUE_DICT || v == VALUE_SET) {
        assert(es->count == 0);
        (*pctx)->pc++;
        return;
    }

    int size;
    uint64_t *vals = value_get(v, &size);

    // TODO.  Should items be pushed in this order???
    if (type == VALUE_DICT) {
        size /= 2 * sizeof(uint64_t);
        for (int i = 0; i < size; i++) {
            ctx_push(pctx, vals[2*i + 1]);
        }
        (*pctx)->pc++;
        return;
    }
    if (type == VALUE_SET) {
        size /= sizeof(uint64_t);
        for (int i = 0; i < size; i++) {
            ctx_push(pctx, vals[i]);
        }
        (*pctx)->pc++;
        return;
    }
    panic("op_Split: not a set or dict");
}

void op_Stop(const void *env, struct state *state, struct context **pctx){
    const struct env_Stop *es = env;

    assert((state->vars & VALUE_MASK) == VALUE_DICT);

    if ((*pctx)->readonly > 0) {
        ctx_failure(*pctx, "Stop: in read-only mode");
        return;
    }

    if (es == 0) {
        uint64_t av = ctx_pop(pctx);
        if ((av & VALUE_MASK) != VALUE_ADDRESS) {
            ctx_failure(*pctx, "Stop: not an address");
            return;
        }
        assert((av & VALUE_MASK) == VALUE_ADDRESS);
        assert(av != VALUE_ADDRESS);

        int size;
        uint64_t *indices = value_get(av, &size);
        size /= sizeof(uint64_t);

        (*pctx)->stopped = true;
        (*pctx)->pc++;
        uint64_t v = value_put_context(*pctx);

        if (!ind_trystore(state->vars, indices, size, v, &state->vars)) {
            ctx_failure(*pctx, "Store: bad address");
            return;
        }
    }
    else {
        (*pctx)->stopped = true;
        (*pctx)->pc++;
        uint64_t v = value_put_context(*pctx);

        if (!ind_trystore(state->vars, es->indices, es->n, v, &state->vars)) {
            ctx_failure(*pctx, "Store: bad variable");
            return;
        }
    }
}

void op_Store(const void *env, struct state *state, struct context **pctx){
    const struct env_Store *es = env;

    assert((state->vars & VALUE_MASK) == VALUE_DICT);

    if ((*pctx)->readonly > 0) {
        ctx_failure(*pctx, "Store: in read-only mode");
        return;
    }

    uint64_t v = ctx_pop(pctx);

    if (es == 0) {
        uint64_t av = ctx_pop(pctx);
        if ((av & VALUE_MASK) != VALUE_ADDRESS) {
            ctx_failure(*pctx, "Store: not an address");
            return;
        }
        assert((av & VALUE_MASK) == VALUE_ADDRESS);
        assert(av != VALUE_ADDRESS);

        int size;
        uint64_t *indices = value_get(av, &size);
        size /= sizeof(uint64_t);

        if (false) {
            printf("STORE IND %d %d %d %"PRIx64" %s %s\n", (*pctx)->pc, (*pctx)->sp, size, v,
                    value_string((*pctx)->stack[(*pctx)->sp - 1]),
                    value_string(av));
            for (int i = 0; i < size; i++) {
                char *index = value_string(indices[i]);
                printf(">> %s\n", index);
                free(index);
            }
        }

        if (!ind_trystore(state->vars, indices, size, v, &state->vars)) {
            ctx_failure(*pctx, "Store: bad address");
            return;
        }
    }
    else {
        if (!ind_trystore(state->vars, es->indices, es->n, v, &state->vars)) {
            ctx_failure(*pctx, "Store: bad variable");
            return;
        }
    }
    (*pctx)->pc++;
}

void op_StoreVar(const void *env, struct state *state, struct context **pctx){
    const struct env_StoreVar *es = env;
    uint64_t v = ctx_pop(pctx);

    assert(((*pctx)->vars & VALUE_MASK) == VALUE_DICT);
    if (es == NULL) {
        uint64_t av = ctx_pop(pctx);
        assert((av & VALUE_MASK) == VALUE_ADDRESS);
        assert(av != VALUE_ADDRESS);

        int size;
        uint64_t *indices = value_get(av, &size);
        size /= sizeof(uint64_t);

        if (!ind_trystore((*pctx)->vars, indices, size, v, &(*pctx)->vars)) {
            ctx_failure(*pctx, "StoreVar: bad address");
            return;
        }
        (*pctx)->pc++;
    }
    else {
        var_match(*pctx, es->args, v);
        if ((*pctx)->failure == 0) {
            (*pctx)->pc++;
        }
    }
}

void op_Trap(const void *env, struct state *state, struct context **pctx){
    extern int code_len;

    (*pctx)->trap_pc = ctx_pop(pctx);
    if (((*pctx)->trap_pc & VALUE_MASK) != VALUE_PC) {
        ctx_failure(*pctx, "trap: not a method");
        return;
    }
    int pc = (*pctx)->trap_pc >> VALUE_BITS;
    assert(pc < code_len);
    assert(strcmp(code[pc].oi->name, "Frame") == 0);
    (*pctx)->trap_arg = ctx_pop(pctx);
    (*pctx)->pc++;
}

void *init_Address(struct dict *map){ return NULL; }
void *init_Apply(struct dict *map){ return NULL; }
void *init_Assert(struct dict *map){ return NULL; }
void *init_Assert2(struct dict *map){ return NULL; }
void *init_AtomicDec(struct dict *map){ return NULL; }
void *init_AtomicInc(struct dict *map){ return NULL; }
void *init_Choose(struct dict *map){ return NULL; }
void *init_Continue(struct dict *map){ return NULL; }
void *init_Del(struct dict *map){ return NULL; }
void *init_Dup(struct dict *map){ return NULL; }
void *init_Go(struct dict *map){ return NULL; }
void *init_Pop(struct dict *map){ return NULL; }
void *init_ReadonlyDec(struct dict *map){ return NULL; }
void *init_ReadonlyInc(struct dict *map){ return NULL; }
void *init_Return(struct dict *map){ return NULL; }
void *init_SetIntLevel(struct dict *map){ return NULL; }
void *init_Spawn(struct dict *map){ return NULL; }
void *init_Trap(struct dict *map){ return NULL; }

void *init_Cut(struct dict *map){
    struct env_Cut *env = new_alloc(struct env_Cut);
    struct json_value *set = dict_lookup(map, "set", 3);
    assert(set->type == JV_ATOM);
    env->set = value_put_atom(set->u.atom.base, set->u.atom.len);
    struct json_value *var = dict_lookup(map, "var", 3);
    assert(var->type == JV_ATOM);
    env->var = value_put_atom(var->u.atom.base, var->u.atom.len);
    return env;
}

void *init_DelVar(struct dict *map){
    struct env_DelVar *env = new_alloc(struct env_DelVar);
    struct json_value *name = dict_lookup(map, "value", 5);
    assert(name->type == JV_ATOM);
    env->name = value_put_atom(name->u.atom.base, name->u.atom.len);
    return env;
}

void *init_Frame(struct dict *map){
    struct env_Frame *env = new_alloc(struct env_Frame);

    struct json_value *name = dict_lookup(map, "name", 4);
    assert(name->type == JV_ATOM);
    env->name = value_put_atom(name->u.atom.base, name->u.atom.len);

    struct json_value *args = dict_lookup(map, "args", 4);
    assert(args->type == JV_ATOM);
    int index = 0;
    env->args = var_parse(args->u.atom.base, args->u.atom.len, &index);

    return env;
}

void *init_IncVar(struct dict *map){
    struct env_IncVar *env = new_alloc(struct env_IncVar);
    struct json_value *name = dict_lookup(map, "value", 5);
    assert(name->type == JV_ATOM);
    env->name = value_put_atom(name->u.atom.base, name->u.atom.len);
    return env;
}

void *init_Load(struct dict *map){
    struct json_value *jv = dict_lookup(map, "value", 5);
    if (jv == NULL) {
        return NULL;
    }
    assert(jv->type == JV_LIST);
    struct env_Load *env = new_alloc(struct env_Load);
    env->n = jv->u.list.nvals;
    env->indices = malloc(env->n * sizeof(uint64_t));
    for (int i = 0; i < env->n; i++) {
        struct json_value *index = jv->u.list.vals[i];
        assert(index->type == JV_MAP);
        env->indices[i] = value_from_json(index->u.map);
    }
    return env;
}

void *init_LoadVar(struct dict *map){
    struct json_value *value = dict_lookup(map, "value", 5);
    if (value == NULL) {
        return NULL;
    }
    else {
        struct env_LoadVar *env = new_alloc(struct env_LoadVar);
        assert(value->type == JV_ATOM);
        env->name = value_put_atom(value->u.atom.base, value->u.atom.len);
        return env;
    }
}

void *init_Move(struct dict *map){
    struct env_Move *env = new_alloc(struct env_Move);

    struct json_value *offset = dict_lookup(map, "offset", 6);
    assert(offset->type == JV_ATOM);
    char *copy = malloc(offset->u.atom.len + 1);
    memcpy(copy, offset->u.atom.base, offset->u.atom.len);
    copy[offset->u.atom.len] = 0;
    env->offset = atoi(copy);
    free(copy);

    return env;
}

void *init_Nary(struct dict *map){
    struct env_Nary *env = new_alloc(struct env_Nary);

    struct json_value *arity = dict_lookup(map, "arity", 5);
    assert(arity->type == JV_ATOM);
    char *copy = malloc(arity->u.atom.len + 1);
    memcpy(copy, arity->u.atom.base, arity->u.atom.len);
    copy[arity->u.atom.len] = 0;
    env->arity = atoi(copy);
    free(copy);

    struct json_value *op = dict_lookup(map, "value", 5);
    assert(op->type == JV_ATOM);
    struct f_info *fi = dict_lookup(f_map, op->u.atom.base, op->u.atom.len);
    if (fi == NULL) {
        fprintf(stderr, "Nary: unknown function '%.*s'\n", op->u.atom.len, op->u.atom.base);
        exit(1);
    }
    env->fi = fi;

    return env;
}

void *init_Invariant(struct dict *map){
    struct env_Invariant *env = new_alloc(struct env_Invariant);

    struct json_value *cnt = dict_lookup(map, "cnt", 3);
    assert(cnt->type == JV_ATOM);
    char *copy = malloc(cnt->u.atom.len + 1);
    memcpy(copy, cnt->u.atom.base, cnt->u.atom.len);
    copy[cnt->u.atom.len] = 0;
    env->cnt = atoi(copy);
    free(copy);
    return env;
}

void *init_Jump(struct dict *map){
    struct env_Jump *env = new_alloc(struct env_Jump);

    struct json_value *pc = dict_lookup(map, "pc", 2);
    assert(pc->type == JV_ATOM);
    char *copy = malloc(pc->u.atom.len + 1);
    memcpy(copy, pc->u.atom.base, pc->u.atom.len);
    copy[pc->u.atom.len] = 0;
    env->pc = atoi(copy);
    free(copy);
    return env;
}

void *init_JumpCond(struct dict *map){
    struct env_JumpCond *env = new_alloc(struct env_JumpCond);

    struct json_value *pc = dict_lookup(map, "pc", 2);
    assert(pc->type == JV_ATOM);
    char *copy = malloc(pc->u.atom.len + 1);
    memcpy(copy, pc->u.atom.base, pc->u.atom.len);
    copy[pc->u.atom.len] = 0;
    env->pc = atoi(copy);
    free(copy);

    struct json_value *cond = dict_lookup(map, "cond", 4);
    assert(cond->type == JV_MAP);
    env->cond = value_from_json(cond->u.map);

    return env;
}

void *init_Push(struct dict *map){
    struct json_value *jv = dict_lookup(map, "value", 5);
    assert(jv->type == JV_MAP);
    struct env_Push *env = new_alloc(struct env_Push);
    env->value = value_from_json(jv->u.map);
    return env;
}

void *init_Split(struct dict *map){
    struct env_Split *env = new_alloc(struct env_Split);

    struct json_value *count = dict_lookup(map, "count", 5);
    assert(count->type == JV_ATOM);
    char *copy = malloc(count->u.atom.len + 1);
    memcpy(copy, count->u.atom.base, count->u.atom.len);
    copy[count->u.atom.len] = 0;
    env->count = atoi(copy);
    free(copy);
    return env;
}

void *init_Stop(struct dict *map){
    struct json_value *jv = dict_lookup(map, "value", 5);
    if (jv == NULL) {
        return NULL;
    }
    assert(jv->type == JV_LIST);
    struct env_Stop *env = new_alloc(struct env_Stop);
    env->n = jv->u.list.nvals;
    env->indices = malloc(env->n * sizeof(uint64_t));
    for (int i = 0; i < env->n; i++) {
        struct json_value *index = jv->u.list.vals[i];
        assert(index->type == JV_MAP);
        env->indices[i] = value_from_json(index->u.map);
    }
    return env;
}

void *init_Store(struct dict *map){
    struct json_value *jv = dict_lookup(map, "value", 5);
    if (jv == NULL) {
        return NULL;
    }
    assert(jv->type == JV_LIST);
    struct env_Store *env = new_alloc(struct env_Store);
    env->n = jv->u.list.nvals;
    env->indices = malloc(env->n * sizeof(uint64_t));
    for (int i = 0; i < env->n; i++) {
        struct json_value *index = jv->u.list.vals[i];
        assert(index->type == JV_MAP);
        env->indices[i] = value_from_json(index->u.map);
    }
    return env;
}

void *init_StoreVar(struct dict *map){
    struct json_value *jv = dict_lookup(map, "value", 5);
    if (jv == NULL) {
        return NULL;
    }
    else {
        assert(jv->type == JV_ATOM);
        struct env_StoreVar *env = new_alloc(struct env_StoreVar);
        int index = 0;
        env->args = var_parse(jv->u.atom.base, jv->u.atom.len, &index);
        return env;
    }
}

uint64_t f_abs(struct state *state, struct context *ctx, uint64_t *args, int n){
    assert(n == 1);
    int64_t e = args[0];
    if ((e & VALUE_MASK) != VALUE_INT) {
        return ctx_failure(ctx, "abs() can only be applied to integers");
    }
    e >>= VALUE_BITS;
    return e >= 0 ? args[0] : (((-e) << VALUE_BITS) | VALUE_INT);
}

uint64_t f_all(struct state *state, struct context *ctx, uint64_t *args, int n){
    assert(n == 1);
    uint64_t e = args[0];
	if (e == VALUE_SET || e == VALUE_DICT) {
		return VALUE_TRUE;
    }
    if ((e & VALUE_MASK) == VALUE_SET) {
        int size;
        uint64_t *v = value_get(e, &size);
        size /= sizeof(uint64_t);
        for (int i = 0; i < size; i++) {
            if ((v[i] & VALUE_MASK) != VALUE_BOOL) {
                return ctx_failure(ctx, "set.all() can only be applied to booleans");
            }
            if (v[i] == VALUE_FALSE) {
                return VALUE_FALSE;
            }
        }
		return VALUE_TRUE;
    }
    if ((e & VALUE_MASK) == VALUE_DICT) {
        int size;
        uint64_t *v = value_get(e, &size);
        size /= 2 * sizeof(uint64_t);
        for (int i = 0; i < size; i++) {
            if ((v[2*i+1] & VALUE_MASK) != VALUE_BOOL) {
                return ctx_failure(ctx, "dict.all() can only be applied to booleans");
            }
            if (v[2*i+1] == VALUE_FALSE) {
                return VALUE_FALSE;
            }
        }
		return VALUE_TRUE;
    }
    return ctx_failure(ctx, "all() can only be applied to sets or dictionaries");
}

uint64_t f_any(struct state *state, struct context *ctx, uint64_t *args, int n){
    assert(n == 1);
    uint64_t e = args[0];
	if (e == VALUE_SET || e == VALUE_DICT) {
		return VALUE_FALSE;
    }
    if ((e & VALUE_MASK) == VALUE_SET) {
        int size;
        uint64_t *v = value_get(e, &size);
        size /= sizeof(uint64_t);
        for (int i = 0; i < size; i++) {
            if ((v[i] & VALUE_MASK) != VALUE_BOOL) {
                return ctx_failure(ctx, "set.any() can only be applied to booleans");
            }
            if (v[i] != VALUE_FALSE) {
                return VALUE_TRUE;
            }
        }
		return VALUE_FALSE;
    }
    if ((e & VALUE_MASK) == VALUE_DICT) {
        int size;
        uint64_t *v = value_get(e, &size);
        size /= 2 * sizeof(uint64_t);
        for (int i = 0; i < size; i++) {
            if ((v[2*i+1] & VALUE_MASK) != VALUE_BOOL) {
                return ctx_failure(ctx, "dict.any() can only be applied to booleans");
            }
            if (v[2*i+1] != VALUE_FALSE) {
                return VALUE_TRUE;
            }
        }
		return VALUE_FALSE;
    }
    return ctx_failure(ctx, "any() can only be applied to sets or dictionaries");
}

uint64_t nametag(struct context *ctx){
    uint64_t nt = dict_store(VALUE_DICT,
            (0 << VALUE_BITS) | VALUE_INT, ctx->entry);
    return dict_store(nt,
            (1 << VALUE_BITS) | VALUE_INT, ctx->arg);
}

uint64_t f_atLabel(struct state *state, struct context *ctx, uint64_t *args, int n){
    assert(n == 1);
    if (ctx->atomic == 0) {
        return ctx_failure(ctx, "atLabel: can only be called in atomic mode");
    }
    uint64_t e = args[0];
    if ((e & VALUE_MASK) != VALUE_PC) {
        return ctx_failure(ctx, "atLabel: not a method");
    }
    e >>= VALUE_BITS;

    int size;
    uint64_t *vals = value_get(state->ctxbag, &size);
    size /= sizeof(uint64_t);
    assert(size > 0);
    assert(size % 2 == 0);
    uint64_t bag = VALUE_DICT;
    for (int i = 0; i < size; i += 2) {
        assert((vals[i] & VALUE_MASK) == VALUE_CONTEXT);
        assert((vals[i+1] & VALUE_MASK) == VALUE_INT);
        struct context *ctx = value_get(vals[i], NULL);
        if (ctx->pc == e) {
            bag = bag_add(bag, nametag(ctx));
        }
    }
    return bag;
}

uint64_t f_div(struct state *state, struct context *ctx, uint64_t *args, int n){
    int64_t e1 = args[0], e2 = args[1];
    if ((e1 & VALUE_MASK) != VALUE_INT) {
        return ctx_failure(ctx, "right argument to / not an integer");
    }
    if ((e2 & VALUE_MASK) != VALUE_INT) {
        return ctx_failure(ctx, "left argument to / not an integer");
    }
    e1 >>= VALUE_BITS;
    if (e1 == 0) {
        return ctx_failure(ctx, "divide by zero");
    }
    int64_t result = (e2 >> VALUE_BITS) / e1;
    return (result << VALUE_BITS) | VALUE_INT;
}

uint64_t f_eq(struct state *state, struct context *ctx, uint64_t *args, int n){
    assert(n == 2);
    return ((args[0] == args[1]) << VALUE_BITS) | VALUE_BOOL;
}

uint64_t f_ge(struct state *state, struct context *ctx, uint64_t *args, int n){
    assert(n == 2);
    int cmp = value_cmp(args[1], args[0]);
    return ((cmp >= 0) << VALUE_BITS) | VALUE_BOOL;
}

uint64_t f_gt(struct state *state, struct context *ctx, uint64_t *args, int n){
    assert(n == 2);
    int cmp = value_cmp(args[1], args[0]);
    return ((cmp > 0) << VALUE_BITS) | VALUE_BOOL;
}

uint64_t f_ne(struct state *state, struct context *ctx, uint64_t *args, int n){
    assert(n == 2);
    return ((args[0] != args[1]) << VALUE_BITS) | VALUE_BOOL;
}

uint64_t f_in(struct state *state, struct context *ctx, uint64_t *args, int n){
    assert(n == 2);
    uint64_t s = args[0], e = args[1];
	if (s == VALUE_SET || s == VALUE_DICT) {
		return VALUE_FALSE;
	}
    if ((s & VALUE_MASK) == VALUE_SET) {
        int size;
        uint64_t *v = value_get(s, &size);
        size /= sizeof(uint64_t);
        for (int i = 0; i < size; i++) {
            if (v[i] == e) {
                return VALUE_TRUE;
            }
        }
        return VALUE_FALSE;
    }
    if ((s & VALUE_MASK) == VALUE_DICT) {
        int size;
        uint64_t *v = value_get(s, &size);
        size /= 2 * sizeof(uint64_t);
        for (int i = 0; i < size; i++) {
            if (v[2*i+1] == e) {
                return VALUE_TRUE;
            }
        }
        return VALUE_FALSE;
    }
    return ctx_failure(ctx, "'in' can only be applied to sets or dictionaries");
}

uint64_t f_intersection(struct state *state, struct context *ctx, uint64_t *args, int n){
    uint64_t e1 = args[0];

    if ((e1 & VALUE_MASK) == VALUE_INT) {
        for (int i = 1; i < n; i++) {
            uint64_t e2 = args[i];
            if ((e2 & VALUE_MASK) != VALUE_INT) {
                return ctx_failure(ctx, "'&' applied to mix of ints and other types");
            }
            e1 &= e2;
        }
        return e1;
    }
	if (e1 == VALUE_SET) {
		return VALUE_SET;
	}
    if ((e1 & VALUE_MASK) == VALUE_SET) {
        // get all the sets
		assert(n > 0);
        struct val_info *vi = malloc(n * sizeof(*vi));
        int min_size = vi[0].size;              // minimum set size
        uint64_t max_val = vi[0].vals[0];       // maximum value over the minima of all sets
        for (int i = 1; i < n; i++) {
            if ((args[i] & VALUE_MASK) != VALUE_SET) {
                return ctx_failure(ctx, "'&' applied to mix of sets and other types");
            }
            if (args[i] == VALUE_SET) {
                min_size = 0;
            }
            else {
                vi[i].vals = value_get(args[i], &vi[i].size); 
                vi[i].index = 0;
				if (vi[i].size < min_size) {
					min_size = vi[i].size;
				}
				if (value_cmp(vi[i].vals[0], max_val) > 0) {
					max_val = vi[i].vals[0];
				}
            }
        }

        // If any are empty lists, we're done.
        if (min_size == 0) {
            return VALUE_SET;
        }

        // Allocate sufficient memory.
        uint64_t *vals = malloc((size_t) min_size), *v = vals;

        bool done = false;
        for (int i = 0; i < min_size; i++) {
            uint64_t old_max = max_val;
            for (int j = 0; j < n; j++) {
                int k, size = vi[j].size / sizeof(uint64_t);
                while ((k = vi[j].index) < size) {
                    uint64_t v = vi[j].vals[k];
                    int cmp = value_cmp(v, max_val);
                    if (cmp > 0) {
                        max_val = v;
                    }
                    if (cmp >= 0) {
                        break;
                    }
                    vi[j].index++;
                }
                if (vi[j].index == vi[j].size) {
                    done = true;
                    break;
                }
            }
            if (done) {
                break;
            }
            if (old_max == max_val) {
                *v++ = max_val;
                for (int j = 0; j < n; j++) {
                    assert(vi[j].index < vi[j].size);
                    vi[j].index++;
                    int k, size = vi[j].size / sizeof(uint64_t);
                    if ((k = vi[j].index) == size) {
                        done = true;
                        break;
                    }
                    if (value_cmp(vi[j].vals[k], max_val) > 0) {
                        max_val = vi[j].vals[k];
                    }
                }
            }
            if (done) {
                break;
            }
        }

        uint64_t result = value_put_set(vals, (char *) v - (char *) vals);
        free(vi);
        free(vals);
        return result;
    }

	if (e1 == VALUE_DICT) {
		return VALUE_DICT;
	}
    if ((e1 & VALUE_MASK) != VALUE_DICT) {
        return ctx_failure(ctx, "'&' can only be applied to ints and dicts");
    }
    // get all the dictionaries
    struct val_info *vi = malloc(n * sizeof(*vi));
    int total = 0;
    for (int i = 0; i < n; i++) {
        if ((args[i] & VALUE_MASK) != VALUE_DICT) {
            return ctx_failure(ctx, "'&' applied to mix of dictionaries and other types");
        }
        if (args[i] == VALUE_DICT) {
            vi[i].vals = NULL;
            vi[i].size = 0;
        }
        else {
            vi[i].vals = value_get(args[i], &vi[i].size); 
            total += vi[i].size;
        }
    }

    // If all are empty dictionaries, we're done.
    if (total == 0) {
        return VALUE_DICT;
    }

    // Concatenate the dictionaries
    uint64_t *vals = malloc(total), *v;
    total = 0;
    for (int i = 0; i < n; i++) {
        memcpy((char *) vals + total, vi[i].vals, vi[i].size);
        total += vi[i].size;
    }

    // sort lexicographically, leaving duplicate keys
    int cnt = total / (2 * sizeof(uint64_t));
    qsort(vals, cnt, 2 * sizeof(uint64_t), q_kv_cmp);

    // now only leave the min value for duplicate keys
    int in = 0, out = 0;
    for (;;) {
        // if there are fewer than n copies of the key, then it's out
        if (in + n > cnt) {
            break;
        }
        int i;
        for (i = in + 1; i < in + n; i++) {
            if (vals[2*i] != vals[2*in]) {
                break;
            }
        }
        if (i == in + n) {
            // copy over the first value
            vals[2*out] = vals[2*in];
            vals[2*out+1] = vals[2*in+1];
            out++;
        }
        in = i;
    }

    uint64_t result = value_put_dict(vals, 2 * out * sizeof(uint64_t));
    free(vi);
    free(vals);
    return result;
}

uint64_t f_invert(struct state *state, struct context *ctx, uint64_t *args, int n){
    assert(n == 1);
    int64_t e = args[0];
    if ((e & VALUE_MASK) != VALUE_INT) {
        return ctx_failure(ctx, "~ can only be applied to ints");
    }
    e >>= VALUE_BITS;
    return ((~e) << VALUE_BITS) | VALUE_INT;
}

uint64_t f_isEmpty(struct state *state, struct context *ctx, uint64_t *args, int n){
    assert(n == 1);
    uint64_t e = args[0];
    if ((e & VALUE_MASK) == VALUE_DICT) {
        return ((e == VALUE_DICT) << VALUE_BITS) | VALUE_BOOL;
    }
    if ((e & VALUE_MASK) == VALUE_SET) {
        return ((e == VALUE_SET) << VALUE_BITS) | VALUE_BOOL;
    }
    panic("op_isEmpty: not a set or dict");
    return 0;
}

uint64_t f_keys(struct state *state, struct context *ctx, uint64_t *args, int n){
    assert(n == 1);
    uint64_t v = args[0];
    if ((v & VALUE_MASK) != VALUE_DICT) {
        return ctx_failure(ctx, "keys() can only be applied to dictionaries");
    }
    if (v == VALUE_DICT) {
        return VALUE_SET;
    }

    int size;
    uint64_t *vals = value_get(v, &size);
    uint64_t *keys = malloc(size / 2);
    size /= 2 * sizeof(uint64_t);
    for (int i = 0; i < size; i++) {
        keys[i] = vals[2*i];
    }
    uint64_t result = value_put_set(keys, size * sizeof(uint64_t));
    free(keys);
    return result;
}

uint64_t f_len(struct state *state, struct context *ctx, uint64_t *args, int n){
    assert(n == 1);
    uint64_t e = args[0];
	if (e == VALUE_SET || e == VALUE_DICT) {
		return VALUE_INT;
	}
    if ((e & VALUE_MASK) == VALUE_SET) {
        int size;
        uint64_t *v = value_get(e, &size);
        size /= sizeof(uint64_t);
        return (size << VALUE_BITS) | VALUE_INT;
    }
    if ((e & VALUE_MASK) == VALUE_DICT) {
        int size;
        uint64_t *v = value_get(e, &size);
        size /= 2 * sizeof(uint64_t);
        return (size << VALUE_BITS) | VALUE_INT;
    }
    return ctx_failure(ctx, "len() can only be applied to sets or dictionaries");
}

uint64_t f_le(struct state *state, struct context *ctx, uint64_t *args, int n){
    assert(n == 2);
    int cmp = value_cmp(args[1], args[0]);
    return ((cmp <= 0) << VALUE_BITS) | VALUE_BOOL;
}

uint64_t f_lt(struct state *state, struct context *ctx, uint64_t *args, int n){
    assert(n == 2);
    int cmp = value_cmp(args[1], args[0]);
    return ((cmp < 0) << VALUE_BITS) | VALUE_BOOL;
}

uint64_t f_max(struct state *state, struct context *ctx, uint64_t *args, int n){
    assert(n == 1);
    uint64_t e = args[0];
	if (e == VALUE_SET) {
        return ctx_failure(ctx, "can't apply max() to empty set");
    }
    if (e == VALUE_DICT) {
        return ctx_failure(ctx, "can't apply max() to empty list");
    }
    if ((e & VALUE_MASK) == VALUE_SET) {
        int size;
        uint64_t *v = value_get(e, &size);
        size /= sizeof(uint64_t);
        uint64_t max = v[0];
        for (int i = 1; i < size; i++) {
            if (value_cmp(v[i], max) > 0) {
                max = v[i];
            }
        }
		return max;
    }
    if ((e & VALUE_MASK) == VALUE_DICT) {
        int size;
        uint64_t *v = value_get(e, &size);
        size /= 2 * sizeof(uint64_t);
        uint64_t max = v[1];
        for (int i = 0; i < size; i++) {
            if (value_cmp(v[2*i+1], max) > 0) {
                max = v[2*i+1];
            }
        }
		return max;
    }
    return ctx_failure(ctx, "max() can only be applied to sets or lists");
}

uint64_t f_min(struct state *state, struct context *ctx, uint64_t *args, int n){
    assert(n == 1);
    uint64_t e = args[0];
	if (e == VALUE_SET) {
        return ctx_failure(ctx, "can't apply min() to empty set");
    }
    if (e == VALUE_DICT) {
        return ctx_failure(ctx, "can't apply min() to empty list");
    }
    if ((e & VALUE_MASK) == VALUE_SET) {
        int size;
        uint64_t *v = value_get(e, &size);
        size /= sizeof(uint64_t);
        uint64_t min = v[0];
        for (int i = 1; i < size; i++) {
            if (value_cmp(v[i], min) < 0) {
                min = v[i];
            }
        }
		return min;
    }
    if ((e & VALUE_MASK) == VALUE_DICT) {
        int size;
        uint64_t *v = value_get(e, &size);
        size /= 2 * sizeof(uint64_t);
        uint64_t min = v[1];
        for (int i = 0; i < size; i++) {
            if (value_cmp(v[2*i+1], min) < 0) {
                min = v[2*i+1];
            }
        }
		return min;
    }
    return ctx_failure(ctx, "min() can only be applied to sets or lists");
}

uint64_t f_minus(struct state *state, struct context *ctx, uint64_t *args, int n){
    assert(n == 1 || n == 2);
    if (n == 1) {
        int64_t e = args[0];
        if ((e & VALUE_MASK) != VALUE_INT) {
            return ctx_failure(ctx, "unary minus can only be applied to ints");
        }
        e >>= VALUE_BITS;
        return ((-e) << VALUE_BITS) | VALUE_INT;
    }
    else {
        if ((args[0] & VALUE_MASK) == VALUE_INT) {
            int64_t e1 = args[0], e2 = args[1];
            if ((e2 & VALUE_MASK) != VALUE_INT) {
                return ctx_failure(ctx, "minus applied to int and non-int");
            }
            e1 >>= VALUE_BITS;
            e2 >>= VALUE_BITS;
            return ((e2 - e1) << VALUE_BITS) | VALUE_INT;
        }

        uint64_t e1 = args[0], e2 = args[1];
        if ((e1 & VALUE_MASK) != VALUE_SET || (e2 & VALUE_MASK) != VALUE_SET) {
            return ctx_failure(ctx, "minus can only be applied to ints or sets");
        }
        int size1, size2;
        uint64_t *vals1, *vals2;
        if (e1 == VALUE_SET) {
            size1 = 0;
            vals1 = NULL;
        }
        else {
            vals1 = value_get(e1, &size1);
        }
        if (e2 == VALUE_SET) {
            size2 = 0;
            vals2 = NULL;
        }
        else {
            vals2 = value_get(e2, &size2);
        }
        uint64_t *vals = malloc(size2);
        size1 /= sizeof(uint64_t);
        size2 /= sizeof(uint64_t);

        uint64_t *p1 = vals1, *p2 = vals2, *q = vals;
        while (size1 > 0 && size2 > 0) {
            if (*p1 == *p2) {
                p1++; size1--;
                p2++; size2--;
            }
            else {
                int cmp = value_cmp(*p1, *p2);
                if (cmp < 0) {
                    p1++; size1--;
                }
                else {
                    assert(cmp > 0);
                    *q++ = *p2++; size2--;
                }
            }
        }
        while (size2 > 0) {
            *q++ = *p2++; size2--;
        }
        uint64_t result = value_put_set(vals, (char *) q - (char *) vals);
        free(vals);
        return result;
    }
}

uint64_t f_mod(struct state *state, struct context *ctx, uint64_t *args, int n){
    int64_t e1 = args[0], e2 = args[1];
    if ((e1 & VALUE_MASK) != VALUE_INT) {
        return ctx_failure(ctx, "right argument to mod not an integer");
    }
    if ((e2 & VALUE_MASK) != VALUE_INT) {
        return ctx_failure(ctx, "left argument to mod not an integer");
    }
    int64_t mod = (e1 >> VALUE_BITS);
    int64_t result = (e2 >> VALUE_BITS) % mod;
    if (result < 0) {
        result += mod;
    }
    return (result << VALUE_BITS) | VALUE_INT;
}

uint64_t f_get_context(struct state *state, struct context *ctx, uint64_t *args, int n){
    return value_put_context(ctx);
}

uint64_t f_not(struct state *state, struct context *ctx, uint64_t *args, int n){
    assert(n == 1);
    uint64_t e = args[0];
    if ((e & VALUE_MASK) != VALUE_BOOL) {
        return ctx_failure(ctx, "not can only be applied to booleans");
    }
    return e ^ (1 << VALUE_BITS);
}

uint64_t f_plus(struct state *state, struct context *ctx, uint64_t *args, int n){
    if ((args[0] & VALUE_MASK) == VALUE_INT) {
        int64_t e1 = args[0];
        for (int i = 1; i < n; i++) {
            int64_t e2 = args[i];
            if ((e2 & VALUE_MASK) != VALUE_INT) {
                return ctx_failure(ctx,
                    "+: applied to mix of integers and other values");
            }
            e1 += e2 & ~VALUE_MASK;
        }
        return e1;
    }

    // get all the lists
    struct val_info *vi = malloc(n * sizeof(*vi));
    int total = 0;
    for (int i = 0; i < n; i++) {
        if ((args[i] & VALUE_MASK) != VALUE_DICT) {
            ctx_failure(ctx, "+: applied to mix of dictionaries and other values");
            free(vi);
            return 0;
        }
        if (args[i] == VALUE_DICT) {
            vi[i].vals = NULL;
            vi[i].size = 0;
        }
        else {
            vi[i].vals = value_get(args[i], &vi[i].size); 
            total += vi[i].size;
        }
    }

    // If all are empty lists, we're done.
    if (total == 0) {
        return VALUE_DICT;
    }

    // Concatenate the sets
    uint64_t *vals = malloc(total), *v;
    total = 0;
    for (int i = n; --i >= 0;) {
        memcpy((char *) vals + total, vi[i].vals, vi[i].size);
        total += vi[i].size;
    }

    // Update the indices
    n = total / (2 * sizeof(uint64_t));
    for (int i = 0; i < n; i++) {
        vals[2*i] = (i << VALUE_BITS) | VALUE_INT;
    }
    uint64_t result = value_put_dict(vals, total);

    free(vi);
    free(vals);
    return result;
}

uint64_t f_power(struct state *state, struct context *ctx, uint64_t *args, int n){
    assert(n == 2);
    int64_t e1 = args[0], e2 = args[1];

    if ((e1 & VALUE_MASK) != VALUE_INT) {
        return ctx_failure(ctx, "right argument to ** not an integer");
    }
    if ((e2 & VALUE_MASK) != VALUE_INT) {
        return ctx_failure(ctx, "left argument to ** not an integer");
    }
    int64_t base = e2 >> VALUE_BITS;
    int64_t exp = e1 >> VALUE_BITS;

    int64_t result = 1;
    for (;;) {
        if (exp & 1) {
            result *= base;
        }
        exp >>= 1;
        if (exp == 0) {
            break;
        }
        base *= base;
    }

    return (result << VALUE_BITS) | VALUE_INT;
}

uint64_t f_range(struct state *state, struct context *ctx, uint64_t *args, int n){
    assert(n == 2);
    int64_t e1 = args[0], e2 = args[1];

    if ((e1 & VALUE_MASK) != VALUE_INT) {
        return ctx_failure(ctx, "right argument to .. not an integer");
    }
    if ((e2 & VALUE_MASK) != VALUE_INT) {
        return ctx_failure(ctx, "left argument to .. not an integer");
    }
    int64_t start = e2 >> VALUE_BITS;
    int64_t finish = e1 >> VALUE_BITS;
	if (finish < start) {
		return VALUE_SET;
	}
    int cnt = (finish - start) + 1;
	assert(cnt > 0);
	assert(cnt < 1000);		// seems unlikely...
    uint64_t *v = malloc(cnt * sizeof(uint64_t));
    for (int i = 0; i < cnt; i++) {
        v[i] = ((start + i) << VALUE_BITS) | VALUE_INT;
    }
    uint64_t result = value_put_set(v, cnt * sizeof(uint64_t));
    free(v);
    return result;
}

uint64_t f_dict_add(struct state *state, struct context *ctx, uint64_t *args, int n){
    assert(n == 3);
    int64_t value = args[0], key = args[1], dict = args[2];
    assert((dict & VALUE_MASK) == VALUE_DICT);
    int size;
    uint64_t *vals = value_get(dict, &size), *v;

    int i = 0, cmp = 1;
    for (v = vals; i < size; i += 2 * sizeof(uint64_t), v += 2) {
        cmp = value_cmp(key, *v);
        if (cmp <= 0) {
            break;
        }
    }

    // See if we found the key.  In that case, we take the bigger value.
    if (cmp == 0) {
        cmp = value_cmp(value, v[1]);
        if (cmp <= 0) {
            return dict;
        }
        uint64_t *nvals = malloc(size);
        memcpy(nvals, vals, size);
        * (uint64_t *) ((char *) nvals + (i + sizeof(uint64_t))) = value;

        uint64_t result = value_put_dict(nvals, size);
        free(nvals);
        return result;
    }
    else {
        uint64_t *nvals = malloc(size + 2*sizeof(uint64_t));
        memcpy(nvals, vals, i);
        * (uint64_t *) ((char *) nvals + i) = key;
        * (uint64_t *) ((char *) nvals + (i + sizeof(uint64_t))) = value;
        memcpy((char *) nvals + i + 2*sizeof(uint64_t), v, size - i);

        uint64_t result = value_put_dict(nvals, size + 2*sizeof(uint64_t));
        free(nvals);
        return result;
    }
}

uint64_t f_set_add(struct state *state, struct context *ctx, uint64_t *args, int n){
    assert(n == 2);
    int64_t elt = args[0], set = args[1];
    assert((set & VALUE_MASK) == VALUE_SET);
    int size;
    uint64_t *vals = value_get(set, &size), *v;

    int i = 0;
    for (v = vals; i < size; i += sizeof(uint64_t), v++) {
        int cmp = value_cmp(elt, *v);
        if (cmp == 0) {
            return set;
        }
        if (cmp < 0) {
            break;
        }
    }

    uint64_t *nvals = malloc(size + sizeof(uint64_t));
    memcpy(nvals, vals, i);
    * (uint64_t *) ((char *) nvals + i) = elt;
    memcpy((char *) nvals + i + sizeof(uint64_t), v, size - i);

    uint64_t result = value_put_set(nvals, size + sizeof(uint64_t));
    free(nvals);
    return result;
}

uint64_t f_bag_add(struct state *state, struct context *ctx, uint64_t *args, int n){
    assert(n == 2);
    int64_t elt = args[0], dict = args[1];
    assert((dict & VALUE_MASK) == VALUE_DICT);
    int size;
    uint64_t *vals = value_get(dict, &size), *v;

    int i = 0, cmp = 1;
    for (v = vals; i < size; i += 2 * sizeof(uint64_t), v++) {
        cmp = value_cmp(elt, *v);
        if (cmp <= 0) {
            break;
        }
    }

    if (cmp == 0) {
        assert((v[1] & VALUE_MASK) == VALUE_INT);
        int cnt = (v[1] >> VALUE_BITS) + 1;
        uint64_t *nvals = malloc(size);
        memcpy(nvals, vals, size);
        * (uint64_t *) ((char *) nvals + (i + sizeof(uint64_t))) =
                                        (cnt << VALUE_BITS) | VALUE_INT;

        uint64_t result = value_put_dict(nvals, size);
        free(nvals);
        return result;
    }
    else {
        uint64_t *nvals = malloc(size + 2*sizeof(uint64_t));
        memcpy(nvals, vals, i);
        * (uint64_t *) ((char *) nvals + i) = elt;
        * (uint64_t *) ((char *) nvals + (i + sizeof(uint64_t))) =
                                        (1 << VALUE_BITS) | VALUE_INT;
        memcpy((char *) nvals + i + 2*sizeof(uint64_t), v, size - i);

        uint64_t result = value_put_dict(nvals, size + 2*sizeof(uint64_t));
        free(nvals);
        return result;
    }
}

uint64_t f_shiftleft(struct state *state, struct context *ctx, uint64_t *args, int n){
    assert(n == 2);
    int64_t e1 = args[0], e2 = args[1];

    if ((e1 & VALUE_MASK) != VALUE_INT) {
        return ctx_failure(ctx, "right argument to << not an integer");
    }
    if ((e2 & VALUE_MASK) != VALUE_INT) {
        return ctx_failure(ctx, "left argument to << not an integer");
    }
    e1 >>= VALUE_BITS;
    e2 >>= VALUE_BITS;
    return ((e2 << e1) << VALUE_BITS) | VALUE_INT;
}

uint64_t f_shiftright(struct state *state, struct context *ctx, uint64_t *args, int n){
    assert(n == 2);
    int64_t e1 = args[0], e2 = args[1];

    if ((e1 & VALUE_MASK) != VALUE_INT) {
        return ctx_failure(ctx, "right argument to >> not an integer");
    }
    if ((e2 & VALUE_MASK) != VALUE_INT) {
        return ctx_failure(ctx, "left argument to >> not an integer");
    }
    e1 >>= VALUE_BITS;
    e2 >>= VALUE_BITS;
    return ((e2 >> e1) << VALUE_BITS) | VALUE_INT;
}

uint64_t f_times(struct state *state, struct context *ctx, uint64_t *args, int n){
    int64_t result = 1;
    int list = -1;
    for (int i = 0; i < n; i++) {
        int64_t e = args[i];
        if ((e & VALUE_MASK) == VALUE_DICT) {
            if (list >= 0) {
                return ctx_failure(ctx, "* can only have at most one list");
            }
            list = i;
        }
        else {
            if ((e & VALUE_MASK) != VALUE_INT) {
                return ctx_failure(ctx,
                    "* can only be applied to integers and at most one list");
            }
            result *= e >> VALUE_BITS;
        }
    }
    if (list < 0) {
        return (result << VALUE_BITS) | VALUE_INT;
    }
    int size;
    uint64_t *vals = value_get(args[list], &size);
    if (size == 0) {
        return VALUE_DICT;
    }
    uint64_t *r = malloc(result * size);
    unsigned int cnt = size / (2 * sizeof(uint64_t));
    int index = 0;
    for (int i = 0; i < result; i++) {
        for (int j = 0; j < cnt; j++) {
            r[2*index] = (index << VALUE_BITS) | VALUE_INT;
            r[2*index+1] = vals[2*j+1];
            index++;
        }
    }
    uint64_t v = value_put_dict(r, result * size);
    free(r);
    return v;
}

uint64_t f_union(struct state *state, struct context *ctx, uint64_t *args, int n){
    uint64_t e1 = args[0];

    if ((e1 & VALUE_MASK) == VALUE_INT) {
        for (int i = 1; i < n; i++) {
            uint64_t e2 = args[i];
            if ((e2 & VALUE_MASK) != VALUE_INT) {
                return ctx_failure(ctx, "'|' applied to mix of ints and other types");
            }
            e1 |= e2;
        }
        return e1;
    }

    if ((e1 & VALUE_MASK) == VALUE_SET) {
        // get all the sets
        struct val_info *vi = malloc(n * sizeof(*vi));
        int total = 0;
        for (int i = 0; i < n; i++) {
            if ((args[i] & VALUE_MASK) != VALUE_SET) {
                return ctx_failure(ctx, "'|' applied to mix of sets and other types");
            }
            if (args[i] == VALUE_SET) {
                vi[i].vals = NULL;
                vi[i].size = 0;
            }
            else {
                vi[i].vals = value_get(args[i], &vi[i].size); 
                total += vi[i].size;
            }
        }

        // If all are empty lists, we're done.
        if (total == 0) {
            return VALUE_SET;
        }

        // Concatenate the sets
        uint64_t *vals = malloc(total), *v;
        total = 0;
        for (int i = 0; i < n; i++) {
            memcpy((char *) vals + total, vi[i].vals, vi[i].size);
            total += vi[i].size;
        }

        n = sort(vals, total / sizeof(uint64_t));
        uint64_t result = value_put_set(vals, n * sizeof(uint64_t));
        free(vi);
        free(vals);
        return result;
    }

    if ((e1 & VALUE_MASK) != VALUE_DICT) {
        return ctx_failure(ctx, "'|' can only be applied to ints and dicts");
    }
    // get all the dictionaries
    struct val_info *vi = malloc(n * sizeof(*vi));
    int total = 0;
    for (int i = 0; i < n; i++) {
        if ((args[i] & VALUE_MASK) != VALUE_DICT) {
            return ctx_failure(ctx, "'|' applied to mix of dictionaries and other types");
        }
        if (args[i] == VALUE_DICT) {
            vi[i].vals = NULL;
            vi[i].size = 0;
        }
        else {
            vi[i].vals = value_get(args[i], &vi[i].size); 
            total += vi[i].size;
        }
    }

    // If all are empty dictionaries, we're done.
    if (total == 0) {
        return VALUE_DICT;
    }

    // Concatenate the dictionaries
    uint64_t *vals = malloc(total), *v;
    total = 0;
    for (int i = 0; i < n; i++) {
        memcpy((char *) vals + total, vi[i].vals, vi[i].size);
        total += vi[i].size;
    }

    // sort lexicographically, leaving duplicate keys
    int cnt = total / (2 * sizeof(uint64_t));
    qsort(vals, cnt, 2 * sizeof(uint64_t), q_kv_cmp);

    // now only leave the max value for duplicate keys
    n = 0;
    for (int i = 1; i < cnt; i++) {
        if (vals[2*i] != vals[2*n]) {
            n++;
        }
        vals[2*n] = vals[2*i];
        vals[2*n+1] = vals[2*i+1];
    }
    n++;

    uint64_t result = value_put_dict(vals, 2 * n * sizeof(uint64_t));
    free(vi);
    free(vals);
    return result;
}

uint64_t f_xor(struct state *state, struct context *ctx, uint64_t *args, int n){
    uint64_t e1 = args[0];

    if ((e1 & VALUE_MASK) == VALUE_INT) {
        for (int i = 1; i < n; i++) {
            uint64_t e2 = args[i];
            if ((e2 & VALUE_MASK) != VALUE_INT) {
                return ctx_failure(ctx, "'^' applied to mix of ints and other types");
            }
            e1 ^= e2;
        }
        return e1 | VALUE_INT;
    }

    // get all the sets
    struct val_info *vi = malloc(n * sizeof(*vi));
    int total = 0;
    for (int i = 0; i < n; i++) {
        if ((args[i] & VALUE_MASK) != VALUE_SET) {
            return ctx_failure(ctx, "'^' applied to mix of sets and other types");
        }
        if (args[i] == VALUE_SET) {
            vi[i].vals = NULL;
            vi[i].size = 0;
        }
        else {
            vi[i].vals = value_get(args[i], &vi[i].size); 
            total += vi[i].size;
        }
    }

    // If all are empty lists, we're done.
    if (total == 0) {
        return VALUE_SET;
    }

    // Concatenate the sets
    uint64_t *vals = malloc(total), *v;
    total = 0;
    for (int i = 0; i < n; i++) {
        memcpy((char *) vals + total, vi[i].vals, vi[i].size);
        total += vi[i].size;
    }

    // sort the values, but retain duplicates
    int cnt = total / sizeof(uint64_t);
    qsort(vals, cnt, sizeof(uint64_t), q_value_cmp);

    // Now remove the values that have an even number
    int i = 0, j = 0, k = 0;
    while (i < cnt) {
        while (i < cnt && vals[i] == vals[j]) {
            i++;
        }
        if ((i - j) % 2 != 0) {
            vals[k++] = vals[j];
        }
        j = i;
    }

    uint64_t result = value_put_set(vals, k * sizeof(uint64_t));
    free(vi);
    free(vals);
    return result;
}

struct op_info op_table[] = {
	{ "Address", init_Address, op_Address },
	{ "Apply", init_Apply, op_Apply },
	{ "Assert", init_Assert, op_Assert },
	{ "Assert2", init_Assert2, op_Assert2 },
	{ "AtomicDec", init_AtomicDec, op_AtomicDec },
	{ "AtomicInc", init_AtomicInc, op_AtomicInc },
	{ "Choose", init_Choose, op_Choose },
	{ "Continue", init_Continue, op_Continue },
	{ "Cut", init_Cut, op_Cut },
	{ "Del", init_Del, op_Del },
	{ "DelVar", init_DelVar, op_DelVar },
	{ "Dup", init_Dup, op_Dup },
	{ "Frame", init_Frame, op_Frame },
	{ "Go", init_Go, op_Go },
	{ "IncVar", init_IncVar, op_IncVar },
	{ "Invariant", init_Invariant, op_Invariant },
	{ "Jump", init_Jump, op_Jump },
	{ "JumpCond", init_JumpCond, op_JumpCond },
	{ "Load", init_Load, op_Load },
	{ "LoadVar", init_LoadVar, op_LoadVar },
	{ "Move", init_Move, op_Move },
	{ "Nary", init_Nary, op_Nary },
	{ "Pop", init_Pop, op_Pop },
	{ "Push", init_Push, op_Push },
	{ "ReadonlyDec", init_ReadonlyDec, op_ReadonlyDec },
	{ "ReadonlyInc", init_ReadonlyInc, op_ReadonlyInc },
	{ "Return", init_Return, op_Return },
	{ "SetIntLevel", init_SetIntLevel, op_SetIntLevel },
	{ "Spawn", init_Spawn, op_Spawn },
	{ "Split", init_Split, op_Split },
	{ "Stop", init_Stop, op_Stop },
	{ "Store", init_Store, op_Store },
	{ "StoreVar", init_StoreVar, op_StoreVar },
	{ "Trap", init_Trap, op_Trap },
    { NULL, NULL, NULL }
};

struct f_info f_table[] = {
	{ "+", f_plus },
	{ "-", f_minus },
	{ "~", f_invert },
	{ "*", f_times },
	{ "/", f_div },
	{ "//", f_div },
	{ "%", f_mod },
	{ "**", f_power },
	{ "<<", f_shiftleft },
	{ ">>", f_shiftright },
    { "<", f_lt },
    { "<=", f_le },
    { ">=", f_ge },
    { ">", f_gt },
    { "|", f_union },
    { "&", f_intersection },
    { "^", f_xor },
    { "..", f_range },
    { "==", f_eq },
    { "!=", f_ne },
    { "abs", f_abs },
    { "all", f_all },
    { "any", f_any },
    { "atLabel", f_atLabel },
    { "BagAdd", f_bag_add },
    { "DictAdd", f_dict_add },
    { "get_context", f_get_context },
    { "in", f_in },
    { "IsEmpty", f_isEmpty },
    { "keys", f_keys },
    { "len", f_len },
    { "max", f_max },
    { "min", f_min },
	{ "mod", f_mod },
    { "not", f_not },
    { "SetAdd", f_set_add },
    { NULL, NULL }
};

struct op_info *ops_get(char *opname, int size){
    return dict_lookup(ops_map, opname, size);
}

void ops_init(){
    ops_map = dict_new(0);
    f_map = dict_new(0);

    for (struct op_info *oi = op_table; oi->name != NULL; oi++) {
        void **p = dict_insert(ops_map, oi->name, strlen(oi->name));
        *p = oi;
    }
    for (struct f_info *fi = f_table; fi->name != NULL; fi++) {
        void **p = dict_insert(f_map, fi->name, strlen(fi->name));
        *p = fi;
    }
}

#include <stdlib.h>
#include <assert.h>

#ifndef HARMONY_COMBINE
#include "global.h"
#endif

#define MAX_CACHE	5000

static struct q_elt *queue_cache;
static unsigned int queue_csize;

struct q_elt {
	struct q_elt *next;
	void *item;
};

struct queue {
	struct q_elt *first, **last;
};

void queue_enqueue(struct queue *queue, void *item){
	struct q_elt *qe;

	if ((qe = queue_cache) == 0) {
		assert(queue_csize == 0);
		qe = new_alloc(struct q_elt);
	}
	else {
		assert(queue_csize > 0);
		queue_csize--;
		queue_cache = qe->next;
		qe->next = 0;
	}

	qe->item = item;
	*queue->last = qe;
	queue->last = &qe->next;
}

void queue_prepend(struct queue *queue, void *item){
	struct q_elt *qe;

	if ((qe = queue_cache) == 0) {
		assert(queue_csize == 0);
		qe = new_alloc(struct q_elt);
	}
	else {
		assert(queue_csize > 0);
		queue_csize--;
		queue_cache = qe->next;
	}

	qe->item = item;
    if ((qe->next = queue->first) == 0) {
        queue->last = &qe->next;
    }
    queue->first = qe;
}

bool queue_dequeue(struct queue *queue, void **item){
	struct q_elt *qe;

	if ((qe = queue->first) == 0) {
		return false;
	}
	if ((queue->first = qe->next) == 0) {
		queue->last = &queue->first;
	}
	*item = qe->item;

	if (queue_csize >= MAX_CACHE) {
		assert(queue_csize == MAX_CACHE);
		free(qe);
	}
	else {
		qe->next = queue_cache;
		queue_cache = qe;
		queue_csize++;
	}
	return true;
}

bool queue_empty(struct queue *queue){
    return queue->first == 0;
}

struct queue *queue_init(void){
	struct queue *q = new_alloc(struct queue);

	q->last = &q->first;
	return q;
}

void queue_release(struct queue *queue){
	assert(queue->last == &queue->first);
	free(queue);
}

void queue_cleanup(void){
	struct q_elt *qe;

	while ((qe = queue_cache) != 0) {
		assert(queue_csize > 0);
		queue_csize--;
		queue_cache = qe->next;
		free(qe);
	}
	assert(queue_csize == 0);
}

#define _GNU_SOURCE

#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>
#include <string.h>
#include <assert.h>

#ifndef HARMONY_COMBINE
#include "global.h"
#endif

static struct dict *atom_map;
static struct dict *dict_map;
static struct dict *set_map;
static struct dict *address_map;
static struct dict *context_map;

void *value_get(uint64_t v, int *psize){
    v &= ~VALUE_MASK;
    if (v == 0) {
        *psize = 0;
        return NULL;
    }
    return dict_retrieve((void *) v, psize);
}

void *value_copy(uint64_t v, int *psize){
    int size;
    void *p = dict_retrieve((void *) (v & ~VALUE_MASK), &size);
    void *r = malloc(size);
    memcpy(r, p, size);
    if (psize != NULL) {
        *psize = size;
    }
    return r;
}

uint64_t value_put_atom(const void *p, int size){
    assert(size > 0);
    void *q = dict_find(atom_map, p, size);
    return (uint64_t) q | VALUE_ATOM;
}

uint64_t value_put_set(void *p, int size){
    if (size == 0) {
        return VALUE_SET;
    }
    void *q = dict_find(set_map, p, size);
    return (uint64_t) q | VALUE_SET;
}

uint64_t value_put_dict(void *p, int size){
    if (size == 0) {
        return VALUE_DICT;
    }
    void *q = dict_find(dict_map, p, size);
    return (uint64_t) q | VALUE_DICT;
}

uint64_t value_put_address(void *p, int size){
    if (size == 0) {
        return VALUE_ADDRESS;
    }
    void *q = dict_find(address_map, p, size);
    return (uint64_t) q | VALUE_ADDRESS;
}

uint64_t value_put_context(struct context *ctx){
    int size = sizeof(*ctx) + (ctx->sp * sizeof(uint64_t));
    void *q = dict_find(context_map, ctx, size);
    return (uint64_t) q | VALUE_CONTEXT;
}

int value_cmp_bool(uint64_t v1, uint64_t v2){
    return v1 == 0 ? -1 : 1;
}

int value_cmp_int(uint64_t v1, uint64_t v2){
    return (int64_t) v1 < (int64_t) v2 ? -1 : 1;
}

int value_cmp_atom(uint64_t v1, uint64_t v2){
    void *p1 = (void *) v1, *p2 = (void *) v2;
    int size1, size2;
    char *s1 = dict_retrieve(p1, &size1);
    char *s2 = dict_retrieve(p2, &size2);
    int size = size1 < size2 ? size1 : size2;
    int cmp = strncmp(s1, s2, size);
    if (cmp != 0) {
        return cmp;
    }
    return size1 < size2 ? -1 : 1;
}

int value_cmp_pc(uint64_t v1, uint64_t v2){
    panic("value_cmp_pc: not yet implemented");
    return 0;
}

int value_cmp_dict(uint64_t v1, uint64_t v2){
    if (v1 == 0) {
        return v2 == 0 ? 0 : -1;
    }
    if (v2 == 0) {
        return 1;
    }
    void *p1 = (void *) v1, *p2 = (void *) v2;
    int size1, size2;
    uint64_t *vals1 = dict_retrieve(p1, &size1);
    uint64_t *vals2 = dict_retrieve(p2, &size2);
    size1 /= sizeof(uint64_t);
    size2 /= sizeof(uint64_t);
    int size = size1 < size2 ? size1 : size2;
    for (int i = 0; i < size; i++) {
        int cmp = value_cmp(vals1[i], vals2[i]);
        if (cmp != 0) {
            return cmp;
        }
    }
    return size1 < size2 ? -1 : 1;
}

int value_cmp_set(uint64_t v1, uint64_t v2){
    if (v1 == 0) {
        return v2 == 0 ? 0 : -1;
    }
    if (v2 == 0) {
        return 1;
    }
    void *p1 = (void *) v1, *p2 = (void *) v2;
    int size1, size2;
    uint64_t *vals1 = dict_retrieve(p1, &size1);
    uint64_t *vals2 = dict_retrieve(p2, &size2);
    size1 /= sizeof(uint64_t);
    size2 /= sizeof(uint64_t);
    int size = size1 < size2 ? size1 : size2;
    for (int i = 0; i < size; i++) {
        int cmp = value_cmp(vals1[i], vals2[i]);
        if (cmp != 0) {
            return cmp;
        }
    }
    return size1 < size2 ? -1 : 1;
}

int value_cmp_address(uint64_t v1, uint64_t v2){
    if (v1 == 0) {
        return v2 == 0 ? 0 : -1;
    }
    if (v2 == 0) {
        return 1;
    }
    void *p1 = (void *) v1, *p2 = (void *) v2;
    int size1, size2;
    uint64_t *vals1 = dict_retrieve(p1, &size1);
    uint64_t *vals2 = dict_retrieve(p2, &size2);
    size1 /= sizeof(uint64_t);
    size2 /= sizeof(uint64_t);
    int size = size1 < size2 ? size1 : size2;
    for (int i = 0; i < size; i++) {
        int cmp = value_cmp(vals1[i], vals2[i]);
        if (cmp != 0) {
            return cmp;
        }
    }
    return size1 < size2 ? -1 : 1;
}

// TODO.  Maybe should compare name tag, pc, ...
int value_cmp_context(uint64_t v1, uint64_t v2){
    void *p1 = (void *) v1, *p2 = (void *) v2;
    int size1, size2;
    char *s1 = dict_retrieve(p1, &size1);
    char *s2 = dict_retrieve(p2, &size2);
    int size = size1 < size2 ? size1 : size2;
    int cmp = memcmp(s1, s2, size);
    if (cmp != 0) {
        return cmp < 0 ? -1 : 1;
    }
    return size1 < size2 ? -1 : 1;
}

int value_cmp(uint64_t v1, uint64_t v2){
    if (v1 == v2) {
        return 0;
    }
    int t1 = v1 & VALUE_MASK;
    int t2 = v2 & VALUE_MASK;
    if (t1 != t2) {
        return t1 < t2 ? -1 : 1;
    }
    switch (t1) {
    case VALUE_BOOL:
        return value_cmp_bool(v1 & ~VALUE_MASK, v2 & ~VALUE_MASK);
    case VALUE_INT:
        return value_cmp_int(v1 & ~VALUE_MASK, v2 & ~VALUE_MASK);
    case VALUE_ATOM:
        return value_cmp_atom(v1 & ~VALUE_MASK, v2 & ~VALUE_MASK);
    case VALUE_PC:
        return value_cmp_pc(v1 & ~VALUE_MASK, v2 & ~VALUE_MASK);
    case VALUE_DICT:
        return value_cmp_dict(v1 & ~VALUE_MASK, v2 & ~VALUE_MASK);
    case VALUE_SET:
        return value_cmp_set(v1 & ~VALUE_MASK, v2 & ~VALUE_MASK);
    case VALUE_ADDRESS:
        return value_cmp_address(v1 & ~VALUE_MASK, v2 & ~VALUE_MASK);
    case VALUE_CONTEXT:
        return value_cmp_context(v1 & ~VALUE_MASK, v2 & ~VALUE_MASK);
    default:
        panic("value_cmp: bad value type");
        return 0;
    }
}

void alloc_printf(char **r, char *fmt, ...){
    va_list args;

    va_start(args, fmt);
    if (vasprintf(r, fmt, args) < 0) {
		panic("alloc_printf: vasprintf");
	}
    va_end(args);
}

void append_printf(char **p, char *fmt, ...){
    char *r;
    va_list args;

    va_start(args, fmt);
    if (vasprintf(&r, fmt, args) < 0) {
		panic("append_printf: vasprintf");
	}
    va_end(args);

    if (*p == 0) {
        *p = r;
    }
    else {
        int n = strlen(*p);
        int m = strlen(r);
        *p = realloc(*p, n + m + 1);
        strcpy(*p + n, r);
        free(r);
    }
}

static char *value_string_bool(uint64_t v) {
    char *r;
    if (v != 0 && v != (1 << VALUE_BITS)) {
        fprintf(stderr, "value_string_bool %"PRIu64"\n", v);
        panic("value_string_bool: bad value");
    }
    assert(v == 0 || v == (1 << VALUE_BITS));
    alloc_printf(&r, v == 0 ? "False" : "True");
    return r;
}

static char *value_json_bool(uint64_t v) {
    char *r;
    if (v != 0 && v != (1 << VALUE_BITS)) {
        fprintf(stderr, "value_json_bool %"PRIu64"\n", v);
        panic("value_json_bool: bad value");
    }
    assert(v == 0 || v == (1 << VALUE_BITS));
    alloc_printf(&r, "{ \"type\": \"bool\", \"value\": \"%s\" }", v == 0 ? "False" : "True");
    return r;
}

static char *value_string_int(uint64_t v) {
    char *r;

    if ((v >> VALUE_BITS) == VALUE_MAX) {
        alloc_printf(&r, "inf");
    }
    else if ((v >> VALUE_BITS) == VALUE_MIN) {
        alloc_printf(&r, "-inf");
    }
    else {
        alloc_printf(&r, "%"PRId64"", ((int64_t) v) >> VALUE_BITS);
    }
    return r;
}

static char *value_json_int(uint64_t v) {
    char *r;

    if ((v >> VALUE_BITS) == VALUE_MAX) {
        alloc_printf(&r, "{ \"type\": \"int\", \"value\": \"inf\" }");
    }
    else if ((v >> VALUE_BITS) == VALUE_MIN) {
        alloc_printf(&r, "{ \"type\": \"int\", \"value\": \"-inf\" }");
    }
    else {
        alloc_printf(&r, "{ \"type\": \"int\", \"value\": \"%"PRId64"\" }",
                            ((int64_t) v) >> VALUE_BITS);
    }
    return r;
}

static char *value_string_atom(uint64_t v) {
    void *p = (void *) v;
    int size;
    char *s = dict_retrieve(p, &size), *r;
    alloc_printf(&r, ".%.*s", size, s);
    return r;
}

static char *value_json_atom(uint64_t v) {
    void *p = (void *) v;
    int size;
    char *s = dict_retrieve(p, &size), *r;
    alloc_printf(&r, "{ \"type\": \"atom\", \"value\": \"%.*s\" }", size, s);
    return r;
}

static char *value_string_pc(uint64_t v) {
    char *r;
    assert((v >> VALUE_BITS) < 10000);      // debug
    alloc_printf(&r, "PC(%"PRIu64")", v >> VALUE_BITS);
    return r;
}

static char *value_json_pc(uint64_t v) {
    char *r;
    alloc_printf(&r, "{ \"type\": \"pc\", \"value\": \"%"PRIu64"\" }", v >> VALUE_BITS);
    return r;
}

static char *value_string_dict(uint64_t v) {
    char *r;

    if (v == 0) {
        alloc_printf(&r, "()");
        return r;
    }

    void *p = (void *) v;
    int size;
    uint64_t *vals = dict_retrieve(p, &size);
    size /= 2 * sizeof(uint64_t);

    bool islist = true;
    for (uint64_t i = 0; i < size; i++) {
        if (vals[2*i] != ((i << VALUE_BITS) | VALUE_INT)) {
            islist = false;
            break;
        }
    }

    if (islist) {
        alloc_printf(&r, "(");
        for (int i = 0; i < size; i++) {
            if (i != 0) {
                append_printf(&r, ", ");
            }
            char *val = value_string(vals[2*i+1]);
            append_printf(&r, "%s", val);
            free(val);
        }
        append_printf(&r, ")");
    }
    else {
        alloc_printf(&r, "{ ");
        for (int i = 0; i < size; i++) {
            if (i != 0) {
                append_printf(&r, ", ");
            }
            char *key = value_string(vals[2*i]);
            char *val = value_string(vals[2*i+1]);
            append_printf(&r, "%s: %s", key, val);
            free(key);
            free(val);
        }
        append_printf(&r, " }");
    }
    return r;
}

static char *value_json_dict(uint64_t v) {
    char *r;

    if (v == 0) {
        alloc_printf(&r, "{ \"type\": \"dict\", \"value\": [] }");
        return r;
    }

    void *p = (void *) v;
    int size;
    uint64_t *vals = dict_retrieve(p, &size);
    size /= 2 * sizeof(uint64_t);

    alloc_printf(&r, "{ \"type\": \"dict\", \"value\": [");
    for (int i = 0; i < size; i++) {
        if (i != 0) {
            append_printf(&r, ", ");
        }
        char *key = value_json(vals[2*i]);
        char *val = value_json(vals[2*i+1]);
        append_printf(&r, "{ \"key\": %s, \"value\": %s }", key, val);
        free(key);
        free(val);
    }
    append_printf(&r, " ] }");
    return r;
}

static char *value_string_set(uint64_t v) {
    char *r;

    if (v == 0) {
        alloc_printf(&r, "{}");
        return r;
    }

    void *p = (void *) v;
    int size;
    uint64_t *vals = dict_retrieve(p, &size);
    size /= sizeof(uint64_t);

    alloc_printf(&r, "{ ");
    for (int i = 0; i < size; i++) {
        char *val = value_string(vals[i]);
        if (i == 0) {
            append_printf(&r, "%s", val);
        }
        else {
            append_printf(&r, ", %s", val);
        }
        free(val);
    }
    append_printf(&r, " }");
    return r;
}

static char *value_json_set(uint64_t v) {
    char *r;

    if (v == 0) {
        alloc_printf(&r, "{ \"type\": \"set\", \"value\": [] }");
        return r;
    }

    void *p = (void *) v;
    int size;
    uint64_t *vals = dict_retrieve(p, &size);
    size /= sizeof(uint64_t);

    alloc_printf(&r, "{ \"type\": \"set\", \"value\": [");
    for (int i = 0; i < size; i++) {
        char *val = value_json(vals[i]);
        if (i == 0) {
            append_printf(&r, "%s", val);
        }
        else {
            append_printf(&r, ", %s", val);
        }
        free(val);
    }
    append_printf(&r, " ] }");
    return r;
}

char *indices_string(const uint64_t *vec, int size) {
    char *r;
    if (size == 0) {
        alloc_printf(&r, "None");
        return r;
    }
    char *s = value_string(vec[0]);
    assert(s[0] == '.');
    alloc_printf(&r, "?%s", s + 1);
    free(s);

    for (int i = 1; i < size; i++) {
        s = value_string(vec[i]);
        if (*s == '.') {
            append_printf(&r, "%s", s);
        }
        else {
            append_printf(&r, "[%s]", s);
        }
    }

    return r;
}

static char *value_string_address(uint64_t v) {
    if (v == 0) {
        char *r;
        alloc_printf(&r, "None");
        return r;
    }

    void *p = (void *) v;
    int size;
    uint64_t *indices = dict_retrieve(p, &size);
    size /= sizeof(uint64_t);
    assert(size > 0);
    return indices_string(indices, size);
}

static char *value_json_address(uint64_t v) {
    char *r;
    if (v == 0) {
        alloc_printf(&r, "{ \"type\": \"address\", \"value\": [] }");
        return r;
    }

    void *p = (void *) v;
    int size;
    uint64_t *vals = dict_retrieve(p, &size);
    size /= sizeof(uint64_t);
    assert(size > 0);
    alloc_printf(&r, "{ \"type\": \"address\", \"value\": [");
    for (int i = 0; i < size; i++) {
        char *val = value_json(vals[i]);
        if (i == 0) {
            append_printf(&r, "%s", val);
        }
        else {
            append_printf(&r, ", %s", val);
        }
        free(val);
    }

    append_printf(&r, " ] }");
    return r;
}

static char *value_string_context(uint64_t v) {
    struct context *ctx = value_get(v, NULL);
    char *name = value_string(ctx->name);
    char *r;
    alloc_printf(&r, "CONTEXT(%s, %d)", name, ctx->pc);
    free(name);
    return r;
}

static char *value_json_context(uint64_t v) {
    struct context *ctx = value_get(v, NULL);
    char *r, *val;
    alloc_printf(&r, "{ \"type\": \"context\", \"value\": {");

    val = value_json(ctx->name);
    append_printf(&r, "\"name\": %s", val);
    free(val);

    val = value_json(ctx->arg);
    append_printf(&r, ", \"arg\": %s", val);
    free(val);

    append_printf(&r, ", \"pc\": { \"type\": \"pc\", \"value\": \"%d\" }", ctx->pc);

    append_printf(&r, " } }");
    return r;
}

char *value_string(uint64_t v){
    switch (v & VALUE_MASK) {
    case VALUE_BOOL:
        return value_string_bool(v & ~VALUE_MASK);
    case VALUE_INT:
        return value_string_int(v & ~VALUE_MASK);
    case VALUE_ATOM:
        return value_string_atom(v & ~VALUE_MASK);
    case VALUE_PC:
        return value_string_pc(v & ~VALUE_MASK);
    case VALUE_DICT:
        return value_string_dict(v & ~VALUE_MASK);
    case VALUE_SET:
        return value_string_set(v & ~VALUE_MASK);
    case VALUE_ADDRESS:
        return value_string_address(v & ~VALUE_MASK);
    case VALUE_CONTEXT:
        return value_string_context(v & ~VALUE_MASK);
    default:
        panic("value_string: bad value type");
        return NULL;
    }
}

char *value_json(uint64_t v){
    switch (v & VALUE_MASK) {
    case VALUE_BOOL:
        return value_json_bool(v & ~VALUE_MASK);
    case VALUE_INT:
        return value_json_int(v & ~VALUE_MASK);
    case VALUE_ATOM:
        return value_json_atom(v & ~VALUE_MASK);
    case VALUE_PC:
        return value_json_pc(v & ~VALUE_MASK);
    case VALUE_DICT:
        return value_json_dict(v & ~VALUE_MASK);
    case VALUE_SET:
        return value_json_set(v & ~VALUE_MASK);
    case VALUE_ADDRESS:
        return value_json_address(v & ~VALUE_MASK);
    case VALUE_CONTEXT:
        return value_json_context(v & ~VALUE_MASK);
    default:
        panic("value_json: bad value type");
        return NULL;
    }
}

bool atom_cmp(json_buf_t buf, char *s){
    int n = strlen(s);
    if (n != buf.len) {
        return false;
    }
    return strncmp(buf.base, s, n) == 0;
}

uint64_t value_bool(struct dict *map){
    struct json_value *value = dict_lookup(map, "value", 5);
    assert(value->type == JV_ATOM);
    if (atom_cmp(value->u.atom, "False")) {
        return VALUE_BOOL;
    }
    if (atom_cmp(value->u.atom, "True")) {
        return (1 << VALUE_BITS) | VALUE_BOOL;
    }
    panic("value_bool: bad value");
    return 0;
}

uint64_t value_int(struct dict *map){
    struct json_value *value = dict_lookup(map, "value", 5);
    assert(value->type == JV_ATOM);
    uint64_t v;
    if (atom_cmp(value->u.atom, "inf")) {
        v = VALUE_MAX;
    }
    else if (atom_cmp(value->u.atom, "-inf")) {
        v = VALUE_MIN;
    }
    else {
        char *copy = malloc(value->u.atom.len + 1);
        memcpy(copy, value->u.atom.base, value->u.atom.len);
        copy[value->u.atom.len] = 0;
        v = atol(copy);
        free(copy);
    }
    return (v << VALUE_BITS) | VALUE_INT;
}

uint64_t value_pc(struct dict *map){
    struct json_value *value = dict_lookup(map, "value", 5);
    assert(value->type == JV_ATOM);
    char *copy = malloc(value->u.atom.len + 1);
    memcpy(copy, value->u.atom.base, value->u.atom.len);
    copy[value->u.atom.len] = 0;
    long v = atol(copy);
    free(copy);
    return (v << VALUE_BITS) | VALUE_PC;
}

uint64_t value_atom(struct dict *map){
    struct json_value *value = dict_lookup(map, "value", 5);
    assert(value->type == JV_ATOM);
    void *p = dict_find(atom_map, value->u.atom.base, value->u.atom.len);
    return (uint64_t) p | VALUE_ATOM;
}

uint64_t value_dict(struct dict *map){
    struct json_value *value = dict_lookup(map, "value", 5);
    assert(value->type == JV_LIST);
    if (value->u.list.nvals == 0) {
        return VALUE_DICT;
    }
    uint64_t *vals = malloc(value->u.list.nvals * sizeof(uint64_t) * 2);
    for (int i = 0; i < value->u.list.nvals; i++) {
        struct json_value *jv = value->u.list.vals[i];
        assert(jv->type == JV_MAP);
        struct json_value *k = dict_lookup(jv->u.map, "key", 3);
        assert(k->type == JV_MAP);
        struct json_value *v = dict_lookup(jv->u.map, "value", 5);
        assert(v->type == JV_MAP);
        vals[2*i] = value_from_json(k->u.map);
        vals[2*i+1] = value_from_json(v->u.map);
    }

    // vals is sorted already by harmony compiler
    void *p = dict_find(dict_map, vals,
                    value->u.list.nvals * sizeof(uint64_t) * 2);
    free(vals);
    return (uint64_t) p | VALUE_DICT;
}

uint64_t value_set(struct dict *map){
    struct json_value *value = dict_lookup(map, "value", 5);
    assert(value->type == JV_LIST);
    if (value->u.list.nvals == 0) {
        return (uint64_t) VALUE_SET;
    }
    uint64_t *vals = malloc(value->u.list.nvals * sizeof(uint64_t));
    for (int i = 0; i < value->u.list.nvals; i++) {
        struct json_value *jv = value->u.list.vals[i];
        assert(jv->type == JV_MAP);
        vals[i] = value_from_json(jv->u.map);
    }

    // vals is sorted already by harmony compiler
    void *p = dict_find(set_map, vals, value->u.list.nvals * sizeof(uint64_t));
    free(vals);
    return (uint64_t) p | VALUE_SET;
}

uint64_t value_address(struct dict *map){
    struct json_value *value = dict_lookup(map, "value", 5);
    assert(value->type == JV_LIST);
    if (value->u.list.nvals == 0) {
        return (uint64_t) VALUE_ADDRESS;
    }
    uint64_t *vals = malloc(value->u.list.nvals * sizeof(uint64_t));
    for (int i = 0; i < value->u.list.nvals; i++) {
        struct json_value *jv = value->u.list.vals[i];
        assert(jv->type == JV_MAP);
        vals[i] = value_from_json(jv->u.map);
    }
    void *p = dict_find(address_map, vals,
                            value->u.list.nvals * sizeof(uint64_t));
    free(vals);
    return (uint64_t) p | VALUE_ADDRESS;
}

uint64_t value_from_json(struct dict *map){
    struct json_value *type = dict_lookup(map, "type", 4);
    assert(type != 0);
    assert(type->type == JV_ATOM);
    if (atom_cmp(type->u.atom, "bool")) {
        return value_bool(map);
    }
    else if (atom_cmp(type->u.atom, "int")) {
        return value_int(map);
    }
    else if (atom_cmp(type->u.atom, "atom")) {
        return value_atom(map);
    }
    else if (atom_cmp(type->u.atom, "dict")) {
        return value_dict(map);
    }
    else if (atom_cmp(type->u.atom, "set")) {
        return value_set(map);
    }
    else if (atom_cmp(type->u.atom, "pc")) {
        return value_pc(map);
    }
    else if (atom_cmp(type->u.atom, "address")) {
        return value_address(map);
    }
    else {
        panic("value_from_json: bad type");
        return 0;
    }
}

void value_init(){
    atom_map = dict_new(0);
    dict_map = dict_new(0);
    set_map = dict_new(0);
    address_map = dict_new(0);
    context_map = dict_new(0);
}


