#ifndef _MINHEAP_H
#define _MINHEAP_H

#include <stdbool.h>

struct minheap *minheap_create();
void *minheap_getmin(struct minheap *);
void minheap_insert(struct minheap *, void *);
void minheap_decrease(struct minheap *, void *);
int  minheap_size(struct minheap *);
bool minheap_empty(struct minheap *mh);
void minheap_destroy(struct minheap *);
bool minheap_check(struct minheap *hm, void *key);

#endif
