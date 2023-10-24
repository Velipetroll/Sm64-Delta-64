-- name: Super Mario Delta 64
-- description: 
-- incompatible: romhack

------LEVEL VALUES------

gLevelValues.entryLevel = LEVEL_WF
gLevelValues.skipCreditsAt = LEVEL_WF
gServerSettings.skipIntro = 1
gLevelValues.fixCollisionBugsFalseLedgeGrab = 1
gLevelValues.fixCollisionBugsPickBestWall = 1
gLevelValues.fixCollisionBugsRoundedCorners = 1
gLevelValues.fixCollisionBugs = 1

gLevelValues.extendedPauseDisplay = 1

gLevelValues.floatingStarDance = 1

------CAMERA------

camera_set_use_course_specific_settings(false)

------AUDIO------

smlua_audio_utils_replace_sequence(0x01, 0x22, 75, "01_Seq_custom")

smlua_audio_utils_replace_sequence(0x02, 0x11, 75, "02_Seq_custom")

smlua_audio_utils_replace_sequence(0x03, 0x25, 75, "03_Seq_custom")

smlua_audio_utils_replace_sequence(0x04, 0x25, 75, "04_Seq_custom")

smlua_audio_utils_replace_sequence(0x05, 0x25, 75, "05_Seq_custom")

smlua_audio_utils_replace_sequence(0x06, 0x25, 75, "06_Seq_custom")

smlua_audio_utils_replace_sequence(0x09, 0x25, 75, "09_Seq_custom")

smlua_audio_utils_replace_sequence(0x0B, 0x14, 75, "0B_Seq_custom")

smlua_audio_utils_replace_sequence(0x0C, 0x11, 75, "0C_Seq_custom")

smlua_audio_utils_replace_sequence(0x0D, 0x25, 75, "0D_Seq_custom")

smlua_audio_utils_replace_sequence(0x0E, 0x25, 75, "0E_Seq_custom")

smlua_audio_utils_replace_sequence(0x0F, 0x25, 75, "0F_Seq_custom")

smlua_audio_utils_replace_sequence(0x10, 0x12, 75, "10_Seq_custom")

smlua_audio_utils_replace_sequence(0x12, 0x1F, 75, "12_Seq_custom")

smlua_audio_utils_replace_sequence(0x14, 0x1A, 75, "14_Seq_custom")

smlua_audio_utils_replace_sequence(0x15, 0x0E, 75, "15_Seq_custom")

smlua_audio_utils_replace_sequence(0x16, 0x25, 75, "16_Seq_custom")

smlua_audio_utils_replace_sequence(0x17, 0x1A, 75, "17_Seq_custom")

smlua_audio_utils_replace_sequence(0x1B, 0x14, 75, "1B_Seq_custom")

smlua_audio_utils_replace_sequence(0x1C, 0x20, 75, "1C_Seq_custom")

smlua_audio_utils_replace_sequence(0x1D, 0x1E, 75, "1D_Seq_custom")

smlua_audio_utils_replace_sequence(0x1E, 0x1B, 75, "1E_Seq_custom")

smlua_audio_utils_replace_sequence(0x1F, 0x1A, 75, "1F_Seq_custom")

smlua_audio_utils_replace_sequence(0x20, 0x23, 75, "20_Seq_custom")

smlua_audio_utils_replace_sequence(0x21, 0x24, 75, "21_Seq_custom")

smlua_audio_utils_replace_sequence(0x23, 0x25, 75, "23_Seq_custom")

------STAR POCISION------

vec3f_set(gLevelValues.starPositions.KoopaBobStarPos, 3030, 4500, -4600)

vec3f_set(gLevelValues.starPositions.KoopaThiStarPos, 7100, -1300, -6000)

vec3f_set(gLevelValues.starPositions.KingBobombStarPos, -9047.0, 566.0, 455.0)

vec3f_set(gLevelValues.starPositions.KingWhompStarPos, 32.0, 2927.0, -299.0)

vec3f_set(gLevelValues.starPositions.EyerockStarPos, -1.0, -159.0, -1078.0)

vec3f_set(gLevelValues.starPositions.BigBullyStarPos, -51.0, 2084.0, 5026.0)

vec3f_set(gLevelValues.starPositions.ChillBullyStarPos, 130.0, 1600.0, -4335.0)

vec3f_set(gLevelValues.starPositions.BigPiranhasStarPos, -6300.0, -1850.0, -6300.0)

vec3f_set(gLevelValues.starPositions.TuxieMotherStarPos, 3167.0, -4300.0, 5108.0)

vec3f_set(gLevelValues.starPositions.WigglerStarPos, 0.0, 2048.0, 0.0)

vec3f_set(gLevelValues.starPositions.PssSlideStarPos, -6358.0, -4300.0, 4700.0)

vec3f_set(gLevelValues.starPositions.RacingPenguinStarPos, -7339.0, -5700.0, -6774.0)

vec3f_set(gLevelValues.starPositions.TreasureChestStarPos, -1800.0, -2500.0, -1700.0)

vec3f_set(gLevelValues.starPositions.GhostHuntBooStarPos, 980.0, 1100.0, 250.0)

vec3f_set(gLevelValues.starPositions.KleptoStarPos, -5550.0, 300.0, -930.0)

vec3f_set(gLevelValues.starPositions.MerryGoRoundStarPos, -1600.0, -2100.0, 205.0)

vec3f_set(gLevelValues.starPositions.MrIStarPos, 0.0, -181.0, 0.0)

vec3f_set(gLevelValues.starPositions.BalconyBooStarPos, 3047.0, 8206.0, -401.0)

vec3f_set(gLevelValues.starPositions.BigBullyTrioStarPos, -401.0, 0.0, 0.0)

--------------------
------MOVESET-------
--------------------

------BETA NO TILTING------

function notilt(m)
    if m.action == ACT_WALKING or m.action == ACT_BUTT_SLIDE or m.action == ACT_RIDING_SHELL_GROUND then
        m.marioBodyState.torsoAngle.x = 0
        m.marioBodyState.torsoAngle.z = 0
 end
end

------TRIPLE JUMP------

function tjump(m)
if m.action == ACT_TRIPLE_JUMP then
set_mario_action(m, ACT_SPECIAL_TRIPLE_JUMP, 0)
 end
end

------LONG JUMP ------

function ljump(m)
if m.action == ACT_LONG_JUMP then

m.vel.y = m.vel.y - 0.5

end
end


------HOOKS------

hook_event(HOOK_ON_SET_MARIO_ACTION,
tjump)

hook_event(HOOK_MARIO_UPDATE, notilt)

hook_event(HOOK_MARIO_UPDATE, ljump)


