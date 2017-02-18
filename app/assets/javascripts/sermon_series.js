function AudioUploader () {
    this.id = ID();

    this.input = element('input', this.id);
    this.input.type = "file";
    this.input.accept = "audio/*";

    this.removalButton = element('button', this.id, 'Remove File');
    this.uploadButton = element('button', this.id, 'Upload');
    this.resultsParagraph = element('p', this.id);

    var audioUploadersDiv = document.getElementById('audio-uploaders');
    var innerDiv = audioUploadersDiv.appendChild(element('div', this.id));

    var elements = [this.input, this.removalButton, this.uploadButton, this.resultsParagraph];
    for (i = 0; i < elements.length; i++) {
	innerDiv.appendChild(elements[i]);
    }
}

var element = function (type, id, text = null) {
    var el = document.createElement(type);
    el.id = id;
    if (text != null) {
	var textNode = document.createTextNode(text);
	el.appendChild(textNode);
    }

    return el;
}

function readFile(file) {
    var request = new XMLHttpRequest();
    request.open("GET", file, false);
    request.send(null);

    return request.responseText;
}

var ID = function () {
    return Math.random().toString(36).substr(2, 9);
};
