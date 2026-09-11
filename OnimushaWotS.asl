state("OnimushaWotS", "")
{
    byte TransitionPhase: 0xCBD3E58, 0x110, 0x10, 0x78;
    int StageID: 0xCBD3E58, 0x110, 0x10, 0x18, 0x48;
    int AreaID: 0xCBD3E58, 0x110, 0x10, 0x18, 0x4C;
    byte BossLocalPhase: 0xCBD3E58, 0xA8, 0x68;
    ushort BossTargetID: 0xCBD3E58, 0xA8, 0x6C;
    uint RealTimeSec: 0xCBD3E58, 0xF0;
    int LastClearedMissionId: 0xCBC7270, 0x150;
    int LastClearedMissionType: 0xCBC7270, 0x154; // MAIN_MISSION = 0, SUB_MISSION = 1, CHARACTER_MISSION = 2
}

startup
{
    // This mode starts automatically when the first bossfight starts,
    // and splits when a boss is defeated.
    settings.Add("Bossrush", false);

    // Mission Splits
    settings.Add("MainMissionSplit", false, "Split when completing a main mission");
    settings.Add("SideMissionSplit", false, "Split when completing a side mission");
    settings.Add("CharMissionSplit", false, "Split when completing a character mission");

    settings.Add("MS_PREFACE", false, "Split on Mission MS_PREFACE");
    settings.Add("MS_000000", false, "Split on Mission MS_000000");
    settings.Add("MS_000010", false, "Split on Mission MS_000010");
    settings.Add("MS_000040", false, "Split on Mission MS_000040");
    settings.Add("MS_032000", false, "Split on Mission MS_032000");
    settings.Add("MS_000030", false, "Split on Mission MS_000030");
    settings.Add("MS_000045", false, "Split on Mission MS_000045");
    settings.Add("MS_032010", false, "Split on Mission MS_032010");
    settings.Add("MS_033000", false, "Split on Mission MS_033000");
    settings.Add("MS_000020", false, "Split on Mission MS_000020");
    settings.Add("MS_000047", false, "Split on Mission MS_000047");
    settings.Add("MS_000050", false, "Split on Mission MS_000050");
    settings.Add("MS_000055", false, "Split on Mission MS_000055");
    settings.Add("MS_000060", false, "Split on Mission MS_000060");
    settings.Add("MS_000080", false, "Split on Mission MS_000080");
    settings.Add("MS_032020", false, "Split on Mission MS_032020");
    settings.Add("MS_000085", false, "Split on Mission MS_000085");
    settings.Add("MS_000070", false, "Split on Mission MS_000070");
    settings.Add("MS_000090", false, "Split on Mission MS_000090");
    settings.Add("MS_032030", false, "Split on Mission MS_032030");
    settings.Add("MS_000100", false, "Split on Mission MS_000100");
    settings.Add("MS_000120", false, "Split on Mission MS_000120");
    settings.Add("MS_000110", false, "Split on Mission MS_000110");
    settings.Add("MS_000130", false, "Split on Mission MS_000130");
    settings.Add("MS_000140", false, "Split on Mission MS_000140");
    settings.Add("MS_000150", false, "Split on Mission MS_000150");
    settings.Add("MS_100200", false, "Split on Mission MS_100200");
    settings.Add("MS_105000", false, "Split on Mission MS_105000");
    settings.Add("MS_100201", false, "Split on Mission MS_100201");
    settings.Add("MS_100202", false, "Split on Mission MS_100202");
    settings.Add("MS_100401", false, "Split on Mission MS_100401");
    settings.Add("MS_105005", false, "Split on Mission MS_105005");
    settings.Add("MS_100100", false, "Split on Mission MS_100100");
    settings.Add("MS_105003", false, "Split on Mission MS_105003");
    settings.Add("MS_205000", false, "Split on Mission MS_205000");
    settings.Add("MS_205001", false, "Split on Mission MS_205001");
    settings.Add("MS_215000", false, "Split on Mission MS_215000");
    settings.Add("MS_205002", false, "Split on Mission MS_205002");
    settings.Add("MS_205003", false, "Split on Mission MS_205003");
    settings.Add("MS_205004", false, "Split on Mission MS_205004");
    settings.Add("MS_205005", false, "Split on Mission MS_205005");
    settings.Add("MS_215001", false, "Split on Mission MS_215001");
    settings.Add("MS_230200", false, "Split on Mission MS_230200");
    settings.Add("MS_230400", false, "Split on Mission MS_230400");
    settings.Add("MS_230401", false, "Split on Mission MS_230401");
    settings.Add("MS_230600", false, "Split on Mission MS_230600");
    settings.Add("MS_230700", false, "Split on Mission MS_230700");
    settings.Add("MS_255000", false, "Split on Mission MS_255000");
    settings.Add("MS_255001", false, "Split on Mission MS_255001");
    settings.Add("MS_255002", false, "Split on Mission MS_255002");
    settings.Add("MS_255003", false, "Split on Mission MS_255003");
    settings.Add("MS_255004", false, "Split on Mission MS_255004");

    // Stage splits
    settings.Add("Split on Stage: Eastern Kyoto (Stage 100)", false);
    settings.Add("Split on Stage: Stage 200", false);
    settings.Add("Split on Stage: Kiyomizu-dera Temple (Stage 201)", false);
    settings.Add("Split on Stage: Oni Refuge (Stage 202)", false);
    settings.Add("Split on Stage: Nijo-jo Castle (Stage 203)", false);
    settings.Add("Split on Stage: Underground Laboratory (Stage 204)", false);
    settings.Add("Split on Stage: Stage 206", false);
    settings.Add("Split on Stage: Stage 207", false);
    settings.Add("Split on Stage: Mount Oe (Stage 209)", false);
    settings.Add("Split on Stage: Stage 210", false);
    settings.Add("Split on Stage: Arashiyama (Stage 211)", false);
    settings.Add("Split on Stage: Stage 212", false);
    settings.Add("Split on Stage: Arashiyama Cont. (Stage 213)", false);
    settings.Add("Split on Stage: Stage 214", false);
    settings.Add("Split on Stage: Kyoto Imperial Palace (Stage 215)", false);
    settings.Add("Split on Stage: Stage 217", false);
    settings.Add("Split on Stage: Stage 218", false);
    settings.Add("Split on Stage: Stage 219", false);
    settings.Add("Split on Stage: Stage 220", false);
    settings.Add("Split on Stage: Stage 700", false);
    settings.Add("Split on Stage: Stage 900", false);

    // Stage 100 areas
    settings.Add("Split on Stage 100: Area100_000 - Rokudo-chinnoji Temple", false);
    settings.Add("Split on Stage 100: Area100_001 - Kamo River - East", false);
    settings.Add("Split on Stage 100: Area100_002 - Kyomizu-Zaka Slope", false);
    settings.Add("Split on Stage 100: Area100_003 - Higashioji Street", false);
    settings.Add("Split on Stage 100: Area100_004", false);
    settings.Add("Split on Stage 100: Area100_005", false);
    settings.Add("Split on Stage 100: Area100_006", false);
    settings.Add("Split on Stage 100: Area100_100", false);
    settings.Add("Split on Stage 100: Area100_101 - Yasaka Pagoda", false);
    settings.Add("Split on Stage 100: Area100_102 - Gojo Street - East", false);
    settings.Add("Split on Stage 100: Area100_103", false);
    settings.Add("Split on Stage 100: Area100_104 - Yasaka Shrine", false);
    settings.Add("Split on Stage 100: Area100_200", false);
    settings.Add("Split on Stage 100: Area100_201 - Gojo Street - West", false);
    settings.Add("Split on Stage 100: Area100_202", false);
    settings.Add("Split on Stage 100: Area100_203", false);
    settings.Add("Split on Stage 100: Area100_204 - Sandbar", false);
    settings.Add("Split on Stage 100: Area100_300 - Shijo Street", false);
    settings.Add("Split on Stage 100: Area100_301", false);
    settings.Add("Split on Stage 100: Area100_400", false);
    settings.Add("Split on Stage 100: Area100_500", false);
    settings.Add("Split on Stage 100: Area100_600", false);
    settings.Add("Split on Stage 100: Area100_700", false);

    // Stage 200 areas
    settings.Add("Split on Stage 200: Area200_000", false);

    // Stage 201 areas
    settings.Add("Split on Stage 201: Area201_000", false);
    settings.Add("Split on Stage 201: Area201_001", false);
    settings.Add("Split on Stage 201: Area201_002", false);

    // Stage 202 areas
    settings.Add("Split on Stage 202: Area202_000", false);
    settings.Add("Split on Stage 202: Area202_001", false);
    settings.Add("Split on Stage 202: Area202_002", false);
    settings.Add("Split on Stage 202: Area202_003", false);

    // Stage 203 areas
    settings.Add("Split on Stage 203: Area203_000", false);

    // Stage 204 areas
    settings.Add("Split on Stage 204: Area204_000", false);
    settings.Add("Split on Stage 204: Area204_001", false);
    settings.Add("Split on Stage 204: Area204_002", false);
    settings.Add("Split on Stage 204: Area204_003", false);
    settings.Add("Split on Stage 204: Area204_004", false);
    settings.Add("Split on Stage 204: Area204_005", false);
    settings.Add("Split on Stage 204: Area204_006", false);

    // Stage 206 areas
    settings.Add("Split on Stage 206: Area206_000", false);

    // Stage 207 areas
    settings.Add("Split on Stage 207: Area207_000", false);

    // Stage 209 areas
    settings.Add("Split on Stage 209: Area209_000", false);
    settings.Add("Split on Stage 209: Area209_001", false);
    settings.Add("Split on Stage 209: Area209_002", false);
    settings.Add("Split on Stage 209: Area209_003", false);
    settings.Add("Split on Stage 209: Area209_004", false);
    settings.Add("Split on Stage 209: Area209_005", false);
    settings.Add("Split on Stage 209: Area209_006", false);
    settings.Add("Split on Stage 209: Area209_007", false);
    settings.Add("Split on Stage 209: Area209_008", false);
    settings.Add("Split on Stage 209: Area209_009", false);
    settings.Add("Split on Stage 209: Area209_010", false);
    settings.Add("Split on Stage 209: Area209_011", false);

    // Stage 210 areas
    settings.Add("Split on Stage 210: Area210_000", false);

    // Stage 211 areas
    settings.Add("Split on Stage 211: Area211_000", false);

    // Stage 212 areas
    settings.Add("Split on Stage 212: Area212_000", false);

    // Stage 213 areas
    settings.Add("Split on Stage 213: Area213_000", false);
    settings.Add("Split on Stage 213: Area213_001", false);
    settings.Add("Split on Stage 213: Area213_002", false);
    settings.Add("Split on Stage 213: Area213_003", false);
    settings.Add("Split on Stage 213: Area213_004", false);
    settings.Add("Split on Stage 213: Area213_005", false);

    // Stage 214 areas
    settings.Add("Split on Stage 214: Area214_000", false);
    settings.Add("Split on Stage 214: Area214_001", false);
    settings.Add("Split on Stage 214: Area214_002", false);
    settings.Add("Split on Stage 214: Area214_003", false);
    settings.Add("Split on Stage 214: Area214_004", false);
    settings.Add("Split on Stage 214: Area214_005", false);
    settings.Add("Split on Stage 214: Area214_006", false);
    settings.Add("Split on Stage 214: Area214_007", false);
    settings.Add("Split on Stage 214: Area214_008", false);
    settings.Add("Split on Stage 214: Area214_009", false);

    // Stage 215 areas
    settings.Add("Split on Stage 215: Area215_000", false);

    // Stage 217 areas
    settings.Add("Split on Stage 217: Area217_000", false);

    // Stage 218 areas
    settings.Add("Split on Stage 218: Area218_000", false);

    // Stage 219 areas
    settings.Add("Split on Stage 219: Area219_000", false);

    // Stage 220 areas
    settings.Add("Split on Stage 220: Area220_000", false);

    // Stage 700 areas
    settings.Add("Split on Stage 700: Area700_000", false);

    // Stage 900 areas
    settings.Add("Split on Stage 900: Area900_000", false);

    // Boss splits
    settings.Add("SplitBossFightStart", false, "Split on Boss Fight Start");

    settings.Add("Byakue_0_EM300_00_00", false, "Split on Boss Defeat: Byakue");
    settings.Add("Byakue_1_EM300_00_01", false, "Split on Boss Defeat: Byakue (Enhanced)");
    settings.Add("Dohatsu_Ten_0_EM301_00_00", false, "Split on Boss Defeat: Dohatsu-Ten");
    settings.Add("Dohatsu_Ten_1_EM301_00_01", false, "Split on Boss Defeat: Dohatsu-Ten (Enhanced)");
    settings.Add("Nue_Dual_EM304_00_00", false, "Split on Boss Defeat: Nue Dual");
    settings.Add("Sasaki_Ganryu_0_EM503_00_00", false, "Split on Boss Defeat: Sasaki Ganryu");
    settings.Add("Sasaki_Ganryu_1_EM503_00_01", false, "Split on Boss Defeat: Sasaki Ganryu (Altered)");
    settings.Add("Daidara_EM500_00_00", false, "Split on Boss Defeat: Daidara");
    settings.Add("Rasho_gan_EM502_00_00", false, "Split on Boss Defeat: Rasho-gan");
    settings.Add("Greater_Nue_EM501_00_00", false, "Split on Boss Defeat: Greater Nue");
    settings.Add("Benkei_0_EM504_00_00", false, "Split on Boss Defeat: Benkei");
    settings.Add("Benkei_1_EM504_00_01", false, "Split on Boss Defeat: Benkei (Fully Armed)");
    settings.Add("Ifuu_EM512_00_00", false, "Split on Boss Defeat: Ifuu");
    settings.Add("Burai_EM513_00_00", false, "Split on Boss Defeat: Burai");
    settings.Add("Ifuu_and_Burai_EM512_00_01", false, "Split on Boss Defeat: Ifuu and Burai");
    settings.Add("Shuten_Doji_EM507_00_00", false, "Split on Boss Defeat: Shuten Doji");
    settings.Add("Dokyo_EM510_00_00", false, "Split on Boss Defeat: Dokyo");
    settings.Add("Minamoto_no_Yoshitsune_EM514_00_00", false, "Split on Boss Defeat: Minamoto no Yoshitsune");
}

init
{
}

isLoading
{
    return current.TransitionPhase == 2;
}

start
{
    if (settings["Bossrush"])
    {
        return old.BossLocalPhase != 2 && current.BossLocalPhase == 2;
    }

    return current.RealTimeSec != 0 && old.RealTimeSec == 0;
}

split
{
    // Stage splits (trigger when transitioning into a new stage)
    // FINISH = 3
    if (current.TransitionPhase == 3 && current.StageID != -1 && current.StageID != old.StageID)
    {
        if (current.StageID == 0 && settings["Split on Stage: Eastern Kyoto (Stage 100)"]) return true;
        if (current.StageID == 1 && settings["Split on Stage: Stage 200"]) return true;
        if (current.StageID == 2 && settings["Split on Stage: Kiyomizu-dera Temple (Stage 201)"]) return true;
        if (current.StageID == 3 && settings["Split on Stage: Oni Refuge (Stage 202)"]) return true;
        if (current.StageID == 4 && settings["Split on Stage: Nijo-jo Castle (Stage 203)"]) return true;
        if (current.StageID == 5 && settings["Split on Stage: Underground Laboratory (Stage 204)"]) return true;
        if (current.StageID == 6 && settings["Split on Stage: Stage 206"]) return true;
        if (current.StageID == 7 && settings["Split on Stage: Stage 207"]) return true;
        if (current.StageID == 8 && settings["Split on Stage: Mount Oe (Stage 209)"]) return true;
        if (current.StageID == 9 && settings["Split on Stage: Stage 210"]) return true;
        if (current.StageID == 10 && settings["Split on Stage: Arashiyama (Stage 211)"]) return true;
        if (current.StageID == 11 && settings["Split on Stage: Stage 212"]) return true;
        if (current.StageID == 12 && settings["Split on Stage: Arashiyama Cont. (Stage 213)"]) return true;
        if (current.StageID == 13 && settings["Split on Stage: Stage 214"]) return true;
        if (current.StageID == 14 && settings["Split on Stage: Kyoto Imperial Palace (Stage 215)"]) return true;
        if (current.StageID == 15 && settings["Split on Stage: Stage 217"]) return true;
        if (current.StageID == 16 && settings["Split on Stage: Stage 218"]) return true;
        if (current.StageID == 17 && settings["Split on Stage: Stage 219"]) return true;
        if (current.StageID == 18 && settings["Split on Stage: Stage 220"]) return true;
        if (current.StageID == 19 && settings["Split on Stage: Stage 700"]) return true;
        if (current.StageID == 20 && settings["Split on Stage: Stage 900"]) return true;
    }

    // Area splits (trigger when entering a new area within the same stage)
    if (current.TransitionPhase == 3 && current.AreaID != -1 && current.StageID == old.StageID && current.AreaID != old.AreaID)
    {
        // Stage 100
        if (current.AreaID == 0 && settings["Split on Stage 100: Area100_000 - Rokudo-chinnoji Temple"]) return true;
        if (current.AreaID == 1 && settings["Split on Stage 100: Area100_001 - Kamo River - East"]) return true;
        if (current.AreaID == 2 && settings["Split on Stage 100: Area100_002 - Kyomizu-Zaka Slope"]) return true;
        if (current.AreaID == 3 && settings["Split on Stage 100: Area100_003 - Higashioji Street"]) return true;
        if (current.AreaID == 4 && settings["Split on Stage 100: Area100_004"]) return true;
        if (current.AreaID == 5 && settings["Split on Stage 100: Area100_005"]) return true;
        if (current.AreaID == 6 && settings["Split on Stage 100: Area100_006"]) return true;
        if (current.AreaID == 7 && settings["Split on Stage 100: Area100_100"]) return true;
        if (current.AreaID == 8 && settings["Split on Stage 100: Area100_101 - Yasaka Pagoda"]) return true;
        if (current.AreaID == 9 && settings["Split on Stage 100: Area100_102 - Gojo Street - East"]) return true;
        if (current.AreaID == 10 && settings["Split on Stage 100: Area100_103"]) return true;
        if (current.AreaID == 11 && settings["Split on Stage 100: Area100_104 - Yasaka Shrine"]) return true;
        if (current.AreaID == 12 && settings["Split on Stage 100: Area100_200"]) return true;
        if (current.AreaID == 13 && settings["Split on Stage 100: Area100_201 - Gojo Street - West"]) return true;
        if (current.AreaID == 14 && settings["Split on Stage 100: Area100_202"]) return true;
        if (current.AreaID == 15 && settings["Split on Stage 100: Area100_203"]) return true;
        if (current.AreaID == 16 && settings["Split on Stage 100: Area100_204 - Sandbar"]) return true;
        if (current.AreaID == 17 && settings["Split on Stage 100: Area100_300 - Shijo Street"]) return true;
        if (current.AreaID == 18 && settings["Split on Stage 100: Area100_301"]) return true;
        if (current.AreaID == 19 && settings["Split on Stage 100: Area100_400"]) return true;
        if (current.AreaID == 20 && settings["Split on Stage 100: Area100_500"]) return true;
        if (current.AreaID == 21 && settings["Split on Stage 100: Area100_600"]) return true;
        if (current.AreaID == 22 && settings["Split on Stage 100: Area100_700"]) return true;

        // Stage 200
        if (current.AreaID == 23 && settings["Split on Stage 200: Area200_000"]) return true;

        // Stage 201
        if (current.AreaID == 24 && settings["Split on Stage 201: Area201_000"]) return true;
        if (current.AreaID == 25 && settings["Split on Stage 201: Area201_001"]) return true;
        if (current.AreaID == 26 && settings["Split on Stage 201: Area201_002"]) return true;

        // Stage 202
        if (current.AreaID == 27 && settings["Split on Stage 202: Area202_000"]) return true;
        if (current.AreaID == 28 && settings["Split on Stage 202: Area202_001"]) return true;
        if (current.AreaID == 29 && settings["Split on Stage 202: Area202_002"]) return true;
        if (current.AreaID == 30 && settings["Split on Stage 202: Area202_003"]) return true;

        // Stage 203
        if (current.AreaID == 31 && settings["Split on Stage 203: Area203_000"]) return true;

        // Stage 204
        if (current.AreaID == 32 && settings["Split on Stage 204: Area204_000"]) return true;
        if (current.AreaID == 33 && settings["Split on Stage 204: Area204_001"]) return true;
        if (current.AreaID == 34 && settings["Split on Stage 204: Area204_002"]) return true;
        if (current.AreaID == 35 && settings["Split on Stage 204: Area204_003"]) return true;
        if (current.AreaID == 36 && settings["Split on Stage 204: Area204_004"]) return true;
        if (current.AreaID == 37 && settings["Split on Stage 204: Area204_005"]) return true;
        if (current.AreaID == 38 && settings["Split on Stage 204: Area204_006"]) return true;

        // Stage 206
        if (current.AreaID == 39 && settings["Split on Stage 206: Area206_000"]) return true;

        // Stage 207
        if (current.AreaID == 40 && settings["Split on Stage 207: Area207_000"]) return true;

        // Stage 209
        if (current.AreaID == 41 && settings["Split on Stage 209: Area209_000"]) return true;
        if (current.AreaID == 42 && settings["Split on Stage 209: Area209_001"]) return true;
        if (current.AreaID == 43 && settings["Split on Stage 209: Area209_002"]) return true;
        if (current.AreaID == 44 && settings["Split on Stage 209: Area209_003"]) return true;
        if (current.AreaID == 45 && settings["Split on Stage 209: Area209_004"]) return true;
        if (current.AreaID == 46 && settings["Split on Stage 209: Area209_005"]) return true;
        if (current.AreaID == 47 && settings["Split on Stage 209: Area209_006"]) return true;
        if (current.AreaID == 48 && settings["Split on Stage 209: Area209_007"]) return true;
        if (current.AreaID == 49 && settings["Split on Stage 209: Area209_008"]) return true;
        if (current.AreaID == 50 && settings["Split on Stage 209: Area209_009"]) return true;
        if (current.AreaID == 51 && settings["Split on Stage 209: Area209_010"]) return true;
        if (current.AreaID == 52 && settings["Split on Stage 209: Area209_011"]) return true;

        // Stage 210
        if (current.AreaID == 53 && settings["Split on Stage 210: Area210_000"]) return true;

        // Stage 211
        if (current.AreaID == 54 && settings["Split on Stage 211: Area211_000"]) return true;

        // Stage 212
        if (current.AreaID == 55 && settings["Split on Stage 212: Area212_000"]) return true;

        // Stage 213
        if (current.AreaID == 56 && settings["Split on Stage 213: Area213_000"]) return true;
        if (current.AreaID == 57 && settings["Split on Stage 213: Area213_001"]) return true;
        if (current.AreaID == 58 && settings["Split on Stage 213: Area213_002"]) return true;
        if (current.AreaID == 59 && settings["Split on Stage 213: Area213_003"]) return true;
        if (current.AreaID == 60 && settings["Split on Stage 213: Area213_004"]) return true;
        if (current.AreaID == 61 && settings["Split on Stage 213: Area213_005"]) return true;

        // Stage 214
        if (current.AreaID == 62 && settings["Split on Stage 214: Area214_000"]) return true;
        if (current.AreaID == 63 && settings["Split on Stage 214: Area214_001"]) return true;
        if (current.AreaID == 64 && settings["Split on Stage 214: Area214_002"]) return true;
        if (current.AreaID == 65 && settings["Split on Stage 214: Area214_003"]) return true;
        if (current.AreaID == 66 && settings["Split on Stage 214: Area214_004"]) return true;
        if (current.AreaID == 67 && settings["Split on Stage 214: Area214_005"]) return true;
        if (current.AreaID == 68 && settings["Split on Stage 214: Area214_006"]) return true;
        if (current.AreaID == 69 && settings["Split on Stage 214: Area214_007"]) return true;
        if (current.AreaID == 70 && settings["Split on Stage 214: Area214_008"]) return true;
        if (current.AreaID == 71 && settings["Split on Stage 214: Area214_009"]) return true;

        // Stage 215
        if (current.AreaID == 72 && settings["Split on Stage 215: Area215_000"]) return true;

        // Stage 217
        if (current.AreaID == 73 && settings["Split on Stage 217: Area217_000"]) return true;

        // Stage 218
        if (current.AreaID == 74 && settings["Split on Stage 218: Area218_000"]) return true;

        // Stage 219
        if (current.AreaID == 75 && settings["Split on Stage 219: Area219_000"]) return true;

        // Stage 220
        if (current.AreaID == 76 && settings["Split on Stage 220: Area220_000"]) return true;

        // Stage 700
        if (current.AreaID == 77 && settings["Split on Stage 700: Area700_000"]) return true;

        // Stage 900
        if (current.AreaID == 78 && settings["Split on Stage 900: Area900_000"]) return true;
    }

    // Mission Splits (trigger when a mission is cleared)
    if (current.LastClearedMissionId != -1 && current.LastClearedMissionId != old.LastClearedMissionId)
    {
        // Split by mission type
        if (settings["MainMissionSplit"] && current.LastClearedMissionType == 0) return true;
        if (settings["SideMissionSplit"] && current.LastClearedMissionType == 1) return true;
        if (settings["CharMissionSplit"] && current.LastClearedMissionType == 2) return true;

        // Split by individual mission
        if (current.LastClearedMissionId == 0 && settings["MS_PREFACE"]) return true;
        if (current.LastClearedMissionId == 1 && settings["MS_000000"]) return true;
        if (current.LastClearedMissionId == 2 && settings["MS_000010"]) return true;
        if (current.LastClearedMissionId == 3 && settings["MS_000040"]) return true;
        if (current.LastClearedMissionId == 4 && settings["MS_032000"]) return true;
        if (current.LastClearedMissionId == 5 && settings["MS_000030"]) return true;
        if (current.LastClearedMissionId == 6 && settings["MS_000045"]) return true;
        if (current.LastClearedMissionId == 7 && settings["MS_032010"]) return true;
        if (current.LastClearedMissionId == 8 && settings["MS_033000"]) return true;
        if (current.LastClearedMissionId == 9 && settings["MS_000020"]) return true;
        if (current.LastClearedMissionId == 10 && settings["MS_000047"]) return true;
        if (current.LastClearedMissionId == 11 && settings["MS_000050"]) return true;
        if (current.LastClearedMissionId == 12 && settings["MS_000055"]) return true;
        if (current.LastClearedMissionId == 13 && settings["MS_000060"]) return true;
        if (current.LastClearedMissionId == 14 && settings["MS_000080"]) return true;
        if (current.LastClearedMissionId == 15 && settings["MS_032020"]) return true;
        if (current.LastClearedMissionId == 16 && settings["MS_000085"]) return true;
        if (current.LastClearedMissionId == 17 && settings["MS_000070"]) return true;
        if (current.LastClearedMissionId == 18 && settings["MS_000090"]) return true;
        if (current.LastClearedMissionId == 19 && settings["MS_032030"]) return true;
        if (current.LastClearedMissionId == 20 && settings["MS_000100"]) return true;
        if (current.LastClearedMissionId == 21 && settings["MS_000120"]) return true;
        if (current.LastClearedMissionId == 22 && settings["MS_000110"]) return true;
        if (current.LastClearedMissionId == 23 && settings["MS_000130"]) return true;
        if (current.LastClearedMissionId == 24 && settings["MS_000140"]) return true;
        if (current.LastClearedMissionId == 25 && settings["MS_000150"]) return true;
        if (current.LastClearedMissionId == 26 && settings["MS_100200"]) return true;
        if (current.LastClearedMissionId == 27 && settings["MS_105000"]) return true;
        if (current.LastClearedMissionId == 28 && settings["MS_100201"]) return true;
        if (current.LastClearedMissionId == 29 && settings["MS_100202"]) return true;
        if (current.LastClearedMissionId == 30 && settings["MS_100401"]) return true;
        if (current.LastClearedMissionId == 31 && settings["MS_105005"]) return true;
        if (current.LastClearedMissionId == 32 && settings["MS_100100"]) return true;
        if (current.LastClearedMissionId == 33 && settings["MS_105003"]) return true;
        if (current.LastClearedMissionId == 34 && settings["MS_205000"]) return true;
        if (current.LastClearedMissionId == 35 && settings["MS_205001"]) return true;
        if (current.LastClearedMissionId == 36 && settings["MS_215000"]) return true;
        if (current.LastClearedMissionId == 37 && settings["MS_205002"]) return true;
        if (current.LastClearedMissionId == 38 && settings["MS_205003"]) return true;
        if (current.LastClearedMissionId == 39 && settings["MS_205004"]) return true;
        if (current.LastClearedMissionId == 40 && settings["MS_205005"]) return true;
        if (current.LastClearedMissionId == 41 && settings["MS_215001"]) return true;
        if (current.LastClearedMissionId == 42 && settings["MS_230200"]) return true;
        if (current.LastClearedMissionId == 43 && settings["MS_230400"]) return true;
        if (current.LastClearedMissionId == 44 && settings["MS_230401"]) return true;
        if (current.LastClearedMissionId == 45 && settings["MS_230600"]) return true;
        if (current.LastClearedMissionId == 46 && settings["MS_230700"]) return true;
        if (current.LastClearedMissionId == 47 && settings["MS_255000"]) return true;
        if (current.LastClearedMissionId == 48 && settings["MS_255001"]) return true;
        if (current.LastClearedMissionId == 49 && settings["MS_255002"]) return true;
        if (current.LastClearedMissionId == 50 && settings["MS_255003"]) return true;
        if (current.LastClearedMissionId == 51 && settings["MS_255004"]) return true;
    }

    // Boss splits, detect transitioning from Main (2) to Wait_End_Victory (3), detecting a win.
    if (old.BossLocalPhase == 2 && current.BossLocalPhase == 3)
    {
        if (current.BossTargetID == 30569 && (settings["Byakue_0_EM300_00_00"] || settings["Bossrush"])) return true;
        if (current.BossTargetID == 5370 && (settings["Byakue_1_EM300_00_01"] || settings["Bossrush"])) return true;
        if (current.BossTargetID == 26515 && (settings["Dohatsu_Ten_0_EM301_00_00"] || settings["Bossrush"])) return true;
        if (current.BossTargetID == 28128 && (settings["Dohatsu_Ten_1_EM301_00_01"] || settings["Bossrush"])) return true;
        if (current.BossTargetID == 5865 && (settings["Nue_Dual_EM304_00_00"] || settings["Bossrush"])) return true;
        if (current.BossTargetID == 354 && (settings["Sasaki_Ganryu_0_EM503_00_00"] || settings["Bossrush"])) return true;
        if (current.BossTargetID == 21015 && (settings["Sasaki_Ganryu_1_EM503_00_01"] || settings["Bossrush"])) return true;
        if (current.BossTargetID == 12224 && (settings["Daidara_EM500_00_00"] || settings["Bossrush"])) return true;
        if (current.BossTargetID == 28045 && (settings["Rasho_gan_EM502_00_00"] || settings["Bossrush"])) return true;
        if (current.BossTargetID == 30616 && (settings["Greater_Nue_EM501_00_00"] || settings["Bossrush"])) return true;
        if (current.BossTargetID == 30875 && (settings["Benkei_0_EM504_00_00"] || settings["Bossrush"])) return true;
        if (current.BossTargetID == 6164 && (settings["Benkei_1_EM504_00_01"] || settings["Bossrush"])) return true;
        if (current.BossTargetID == 26446 && (settings["Ifuu_EM512_00_00"] || settings["Bossrush"])) return true;
        if (current.BossTargetID == 17004 && (settings["Burai_EM513_00_00"] || settings["Bossrush"])) return true;
        if (current.BossTargetID == 16869 && (settings["Ifuu_and_Burai_EM512_00_01"] || settings["Bossrush"])) return true;
        if (current.BossTargetID == 6309 && (settings["Shuten_Doji_EM507_00_00"] || settings["Bossrush"])) return true;
        if (current.BossTargetID == 21579 && (settings["Dokyo_EM510_00_00"] || settings["Bossrush"])) return true;
        if (current.BossTargetID == 17066 && (settings["Minamoto_no_Yoshitsune_EM514_00_00"] || settings["Bossrush"])) return true;
    }

    // Entering Main (2): Boss fight started (any boss)
    if (settings["SplitBossFightStart"] && old.BossLocalPhase != 2 && current.BossLocalPhase == 2)
    {
        return true;
    }

    return false;
}

reset
{
    return current.RealTimeSec == 0 && old.RealTimeSec != 0;
}
