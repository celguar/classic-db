-- Darnassus Sentinel 4262 (Rut'theran Village)
UPDATE creature SET position_x = 8644.208, position_y = 853.2105, position_z = 22.355267, orientation = 1.50239, spawndist = 0, MovementType = 2 WHERE guid = 46825;
-- waypoints
DELETE FROM creature_movement WHERE id = 46825;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(46825,1,8647.808,868.63934,23.212633,100,0,0),
(46825,2,8657.981,873.3514,22.37611,100,0,0),
(46825,3,8670.864,876.9106,22.123152,100,0,0),
(46825,4,8680.514,881.326,23.230516,100,0,0),
(46825,5,8685.484,889.3323,22.422583,100,0,0),
(46825,6,8686.014,904.0842,21.40408,100,0,0),
(46825,7,8687.324,922.13214,16.083908,100,0,0),
(46825,8,8689.776,930.66925,15.553102,100,0,0),
(46825,9,8696.605,941.5968,13.781057,100,0,0),
(46825,10,8696.757,949.54407,13.006399,100,0,0),
(46825,11,8695.549,956.4781,12.202627,100,0,0),
(46825,12,8691.133,966.0688,11.514212,100,0,0),
(46825,13,8684.711,974.0922,10.755286,100,0,0),
(46825,14,8676.798,984.3464,8.006629,100,0,0),
(46825,15,8682.726,987.4831,9.514258,100,0,0),
(46825,16,8689.632,988.9705,11.368621,100,0,0),
(46825,17,8682.726,987.4831,9.514258,100,0,0),
(46825,18,8676.798,984.3464,8.006629,100,0,0),
(46825,19,8684.711,974.0922,10.755286,100,0,0),
(46825,20,8691.133,966.0688,11.514212,100,0,0),
(46825,21,8695.549,956.4781,12.202627,100,0,0),
(46825,22,8696.757,949.54407,13.006399,100,0,0),
(46825,23,8696.605,941.5968,13.781057,100,0,0),
(46825,24,8689.776,930.66925,15.553102,100,0,0),
(46825,25,8687.324,922.13214,16.083908,100,0,0),
(46825,26,8686.014,904.0842,21.40408,100,0,0),
(46825,27,8685.484,889.3323,22.422583,100,0,0),
(46825,28,8680.514,881.326,23.230516,100,0,0),
(46825,29,8670.864,876.9106,22.123152,100,0,0),
(46825,30,8657.981,873.3514,22.37611,100,0,0),
(46825,31,8647.808,868.63934,23.212633,100,0,0),
(46825,32,8644.208,853.2105,22.355267,100,0,0);