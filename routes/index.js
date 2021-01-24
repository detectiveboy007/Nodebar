var express = require('express');
var router = express.Router();
var JsBarcode = require('jsbarcode');
var Canvas = require("canvas");

/* GET home page. */
router.get('/:taxId/:suffix/:ref1/:ref2/:amount',(req, res, next) => {
//creat variable for barcode data
const textId = req.params.taxId;
const suffix = req.params.suffix;
const ref1 = req.params.ref1;
const ref2 = req.params.ref2;
const amount = req.params.amount;
//Assign a barcode Data
var barcodeData ="|";
barcodeData += textId;
barcodeData += suffix + "\r";
barcodeData += ref1 + "\r";
barcodeData += ref2 + "\r";
barcodeData += amount ;

// create canvas for draw barcode image
var canvas = new Canvas.createCanvas();

//generate barcode image
JsBarcode(canvas,barcodeData);
//set return type is jpg file
res.contentType('image/png');
//respose to apps
res.end(canvas.toBuffer());

});

module.exports = router;
