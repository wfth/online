function AudioUploader () {
  this.input = element('input');
  this.input.type = "file";
  this.input.accept = "audio/*";

  this.removalButton = element('button', 'Remove File');
  this.uploadButton = element('button', 'Upload');
  this.resultsParagraph = element('p');

  var audioUploadersDiv = document.getElementById('audio-uploaders');
  var innerDiv = audioUploadersDiv.appendChild(element('div'));

  var elements = [this.input, this.removalButton, this.uploadButton, this.resultsParagraph];
  for (i = 0; i < elements.length; i++) {
	  innerDiv.appendChild(elements[i]);
  }
}

var element = function(type, text) {
  var el = document.createElement(type);
  if (text != null) {
	  var textNode = document.createTextNode(text);
	  el.appendChild(textNode);
  }
  return el;
}
