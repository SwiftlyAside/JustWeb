const func = function () {
    const main = document.getElementById('main');
    const children = main.childNodes;
    console.log(`length : ${children.length}`);

    for (const child of children) {
        if (child.nodeType === 1) {
            console.log(`name : ${child.nodeName}`);
            console.log(`type : ${child.type}`);
        }
    }
};

func();