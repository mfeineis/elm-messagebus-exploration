/* global Elm */
const app = Elm.Main.init({
    flags: {},
});

const root = document.createElement("div");
root.id = "root";
document.body.appendChild(root);

const render = ({ attributes, children, tag, textValue }) => {
    if (textValue) {
        return textValue;
    }

    const attr = attributes.map(({ key, value }) => {
        const lowerKey = key.toLowerCase();
        if (/^on/.test(lowerKey)) {
            return ` x-${lowerKey}=${JSON.stringify(value)}`;
        }

        return ` ${lowerKey}=${JSON.stringify(value)}`;
    }).join('');

    return `<${tag} ${attr}>${children.map(render).join('')}</${tag}>`;
};

const renderToString = nodes => nodes.map(render).join('');

const clientRender = (root, doc) => {
    const head = document.querySelector("head");
    head.innerHTML = renderToString(doc.head);
    const title = document.createElement("title");
    title.innerText = doc.title;
    head.appendChild(title);

    document.title = doc.title;

    root.innerHTML = renderToString(doc.body);
};

app.ports.render.subscribe(doc => {
    console.log(`render`, root, doc);
    clientRender(root, doc);
});

//app.ports.gateway.send({
//    cmd: "INCREMENT",
//});
