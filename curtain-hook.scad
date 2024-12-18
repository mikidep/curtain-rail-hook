include <BOSL2/std.scad>
include <BOSL2/turtle3d.scad>

W = 20; // Top hook width
BW = 8; // Bottom hook width
RW = 30; // Rail width
RTH = 8; // Rail thickness

transforms = turtle3d([
  "move", RW,
  "arcdown", 0,
  "move", RTH,
  "arcdown", 0,
  "move", 2*RW,
  "arcdown", -2*RTH, -30,
  [
    "arc", RTH, "down", 60,
    "shrink", [ 1, W/BW ]
  ],
  "arcdown", RTH, 150
], state=TOP, transforms = true);

sweep(square([ RTH, W ], anchor = RIGHT), transforms);
