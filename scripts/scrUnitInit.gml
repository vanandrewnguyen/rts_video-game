///scrUnitInit(teamIndex, hp, max_speed, acc, fric, weight, attackRange, reloadTime, bSpread, bSpd, bDmg, bSprite, bTrail, unitType);
// Initialise a new ship unit.

var _index = argument0;
var _hp = argument1;
var _spd = argument2;
var _acc = argument3;
var _fric = argument4;
var _w = argument5;
var _atkRange = argument6;
var _reloadTime = argument7;
var _bSpread = argument8;
var _bSpd = argument9;
var _bDmg = argument10;
var _bSprite = argument11;
var _bTrail = argument12;
var _type = argument13;

// Target Variables
moveTarget = -1;     // Target object to move to
firingTarget = -1;   // Target object to fire at
atTarget = true;     // Whether or not the unit has reached its moveTarget
moveTargetX = 0;
moveTargetY = 0;

// State Variables
selected = false;
selectionIndex = 0;
state = "idle";
unitType = _type;

// Movement Variables
hsp = 0;
vsp = 0 ;
moveDir = 0;
maxSpd = _spd;;
acc = _acc;
fric = _fric;
weight = _w;

// Combat Variables
hp = _hp;
maxHp = hp;
hpDraw = hp;
inCombat = false;
teamIndex = _index;
attackRange = _atkRange;
reloadTimeInt = 0;
reloadTimeTar = _reloadTime;
bulletSpread = _bSpread;
bulletSpd = _bSpd;
bulletDmg = _bDmg;
bulletSprite = _bSprite;
bulletTrail = _bTrail;
stunned = false;

// Drawing Variables
drawAngle = random(360);
unitAngle = drawAngle;
xScale = 1;
yScale = 1;
alpha = 1;
hpBarAlpha = 0;
hpBarAlphaTar = 0;
t = 0;


