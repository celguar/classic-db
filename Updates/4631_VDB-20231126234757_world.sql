-- Add your query below.
-- https://github.com/vmangos/core/commit/17822e318eacc20d853dc09e8a69e200aba2e6ce

-- Pathing for Witherheart the Stalker Entry: 8218
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `EquipmentTemplateId` = 8218 WHERE `entry` = 8218;
DELETE FROM `creature_equip_template` WHERE `entry` = 8218;
INSERT INTO `creature_equip_template` (entry, equipentry1, equipentry2, equipentry3) VALUES (8218, 10617, 5285, 0);
SET @NPC := 8218;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-399.90463,`position_y`=-2810.7239,`position_z`=78.00985 WHERE `id`=@NPC;
DELETE FROM `creature_movement_template` WHERE `entry`=@NPC;
INSERT INTO `creature_movement_template` (`entry`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
(@NPC,1,-399.90463,-2810.7239,78.00985,100,0,0),
(@NPC,2,-411.23264,-2833.3965,79.34615,100,0,0),
(@NPC,3,-419.67285,-2866.848,81.6237,100,0,0),
(@NPC,4,-433.39053,-2891.0513,85.470924,100,0,0),
(@NPC,5,-440.9833,-2912.3506,88.50849,100,0,0),
(@NPC,6,-431.72278,-2919.4988,87.758095,100,0,0),
(@NPC,7,-410.9552,-2911.8176,80.65067,100,0,0),
(@NPC,8,-398.36133,-2915.043,79.20992,100,0,0),
(@NPC,9,-368.3346,-2925.7651,75.58492,100,0,0),
(@NPC,10,-333.24603,-2914.1536,77.88582,100,0,0),
(@NPC,11,-312.31683,-2894.8928,79.29725,100,0,0),
(@NPC,12,-316.2032,-2867.8672,80.33094,100,0,0),
(@NPC,13,-343.85233,-2834.53,75.73404,100,0,0),
(@NPC,14,-331.66537,-2820.3848,79.355644,100,0,0),
(@NPC,15,-345.9131,-2799.4731,80.685,100,0,0),
(@NPC,16,-368.80045,-2797.7434,76.87515,100,0,0),
(@NPC,17,-390.4299,-2788.0408,77.2648,100,0,0);
-- 0x204CB0000008068000000D00003DC2AA .go xyz -399.90463 -2810.7239 78.00985

-- End of migration.
