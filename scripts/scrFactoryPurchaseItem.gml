///scrFactoryPurchaseItem();

var tempInst = -1;
var instNum = instance_number(factoryBuildIndex[factoryAnimTar,4]);
if (instNum > factoryBuildIndex[factoryAnimTar,2]) {
    scrCreateFlashingText("Unit max reached!", x, y - 32, 
                                      c_white, global.colDarkPink);
    exit;
}

// Create
var xx = x - 64 + random_range(-8, 8);
var yy = y + random_range(-32,32);
var inst = instance_create(xx, yy, factoryBuildIndex[factoryAnimTar,4]);

// Subtract the fees
global.currency -= factoryBuildIndex[factoryAnimTar, 1];



