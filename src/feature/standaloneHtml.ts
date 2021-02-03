import * as fs from 'fs';
import {PathLike} from 'fs';
import * as path from 'path';
import {parse} from 'node-html-parser';
import * as createHtmlElement from 'create-html-element';
import HTMLElement from "node-html-parser/dist/nodes/html";
import NodeType from "node-html-parser/dist/nodes/type";
import Node from "node-html-parser/dist/nodes/node";

/**
 * Creates an HTML file that displays the information shown in VS Code as a standalone file.
 * @param target_directory Directory to output the standalone html file.
 * @param jsonData Object with Harmony data.
 */
export function createStandaloneHtml(target_directory: PathLike, jsonData: Record<string, unknown>): void {
  const htmlFilename = path.join(__dirname, '..', '..', 'harmony-0.9', 'web', 'charmony.html');
  const htmlString = fs.readFileSync(htmlFilename).toString();
  const html = addScript(removeOverlayTag(parse(htmlString)), jsonData);
  fs.writeFileSync(path.join(target_directory.toString(), 'harmony.html'), html.innerHTML);
}


function isElementWithProps(n: Node, props: {
  tag?: string;
  id?: string;
}): n is HTMLElement {
  if (n.nodeType !== NodeType.ELEMENT_NODE) return false;
  const e = n as HTMLElement;
  if (props.tag != null && e.rawTagName !== props.tag) return false;
  if (props.id != null && e.id !== props.id) return false;
  return true;
}

/**
 * Removes the overlay tag inside an HTML DOM-tree.
 */
function removeOverlayTag(head: HTMLElement) {
  let overlayElement: Node | null = null;
  let parentElement: HTMLElement | null = null;
  for (const c of head.childNodes) {
    if (isElementWithProps(c, {tag: "html"})) {
      for (const c2 of c.childNodes) {
        if (isElementWithProps(c2, {tag: "body"})) {
          for (const c3 of c2.childNodes) {
            if (isElementWithProps(c3, {id: "overlay"})) {
              overlayElement = c3;
              parentElement = c2 as HTMLElement;
              break;
            }
          }
          if (overlayElement != null) break;
        }
      }
      if (overlayElement != null) break;
    }
  }
  if (overlayElement != null && parentElement != null) {
    parentElement.removeChild(overlayElement);
  }
  return head;
}

/**
 * Adds boot-up script into HTML.
 * @param head
 * @param jsonData
 */
function addScript(head: HTMLElement, jsonData: Record<string, unknown>) {
  for (const c of head.childNodes) {
    if (isElementWithProps(c, {tag: "html"})) {
      const loadScript = createHtmlElement({
        name: 'script',
        html: `
        window.onload = function() {
          if (overlay != null) {
            overlay.addEventListener("transitionend", (event) => {
            overlay.style.display = "none";
          }, false);
          overlay.style.opacity = 0;
        }
        const data = ${JSON.stringify(jsonData)};
        initWindow(data);
      };`});
      c.appendChild(parse(loadScript));
      break;
    }
  }
  return head;
}
