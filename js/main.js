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
        return ` x-${key.toLowerCase()}=${JSON.stringify(value)}`;
    }).join('');

    return `<${tag} ${attr}>${children.map(render).join('')}</${tag}>`;
};

app.ports.render.subscribe(doc => {
    console.log(`render`, root, doc);

    document.title = doc.title;

    root.innerHTML = doc.body.map(render).join('');
});

app.ports.gateway.send({
    cmd: "INCREMENT",
});
