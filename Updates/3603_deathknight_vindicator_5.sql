
SET @PATH_ID := 533 * 10000 + 5;
SET @PATH_TYPE := 4;

SET @CREATURE_ID := 533 * 10000 + 5 * 3;
SET @GROUP_ID := 533 * 10000 + 5;

DELETE FROM `creature` WHERE (`guid` IN ('88808', '88809', '88810'));
DELETE FROM `creature_movement` WHERE (`Id` = '88808');

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '2556.705322265625', '-3334.408447265625', '267.7499694824218750', '100', '0', '0'),
(@PATH_ID, '02', '2556.617675781250', '-3307.602050781250', '267.7499694824218750', '100', '0', '0'),
(@PATH_ID, '03', '2556.292968750000', '-3280.976074218750', '267.7500000000000000', '100', '0', '0'),
(@PATH_ID, '04', '2556.604736328125', '-3248.458740234375', '255.3048400878906250', '100', '0', '0'),
(@PATH_ID, '05', '2556.454345703125', '-3204.416748046875', '240.5500183105468750', '100', '0', '0'),
(@PATH_ID, '06', '2555.421630859375', '-3179.126953125000', '240.6875610351562500', '100', '0', '0'),
(@PATH_ID, '07', '2556.202392578125', '-3157.404052734375', '240.6875457763671875', '100', '0', '0'),
(@PATH_ID, '08', '2556.076171875000', '-3129.318603515625', '240.6875457763671875', '100', '0', '0'),
(@PATH_ID, '09', '2586.669189453125', '-3098.506103515625', '240.6875305175781250', '100', '0', '0'),
(@PATH_ID, '10', '2620.904785156250', '-3064.025390625000', '240.6875610351562500', '100', '0', '0'),
(@PATH_ID, '11', '2645.222167968750', '-3039.669921875000', '240.6875610351562500', '100', '0', '0'),
(@PATH_ID, '12', '2677.869140625000', '-3007.498779296875', '240.5573425292968750', '100', '0', '0'),
(@PATH_ID, '13', '2700.384033203125', '-2984.831542968750', '240.5573425292968750', '100', '0', '0'),
(@PATH_ID, '14', '2749.858886718750', '-2985.292480468750', '240.5573120117187500', '100', '0', '0'),
(@PATH_ID, '15', '2795.958251953125', '-2984.750488281250', '242.8388214111328125', '100', '0', '0'),
(@PATH_ID, '16', '2815.523193359375', '-2985.905273437500', '253.1055297851562500', '100', '0', '0'),
(@PATH_ID, '17', '2837.153320312500', '-2987.224365234375', '263.4650573730468750', '100', '0', '0'),
(@PATH_ID, '18', '2863.833251953125', '-2987.051513671875', '267.7573242187500000', '100', '0', '0'),
(@PATH_ID, '19', '2895.389892578125', '-2985.884033203125', '267.7573242187500000', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_ID + 0, '0', '533', '1', '0', '0', '2556.705322265625', '-3334.408447265625', '267.7499694824218750', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0'),
(@CREATURE_ID + 1, '0', '533', '1', '0', '0', '2551.705322265625', '-3339.408447265625', '267.7499694824218750', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0'),
(@CREATURE_ID + 2, '0', '533', '1', '0', '0', '2561.705322265625', '-3329.408447265625', '267.7499694824218750', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_ID + 0, '16451'),
(@CREATURE_ID + 1, '16452'),
(@CREATURE_ID + 2, '16452');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Naxxramas - Deathknight Vindicator (3) Patrol 005', '0', '0', '0', '1');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_ID + 0, '0'),
(@GROUP_ID, @CREATURE_ID + 1, '1'),
(@GROUP_ID, @CREATURE_ID + 2, '2');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '5', '0', @PATH_ID, @PATH_TYPE, 'Naxxramas - Deathknight Vindicator (3) Patrol 005');