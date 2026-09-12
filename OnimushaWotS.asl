state("OnimushaWotS", "")
{
    byte TransitionPhase: 0xCBD3E58, 0x110, 0x10, 0x78; // ANALYZE = 1, LOADING = 2, FINISH = 3
    int StageID: 0xCBD3E58, 0x110, 0x10, 0x18, 0x48;
    int AreaID: 0xCBD3E58, 0x110, 0x10, 0x18, 0x4C;
    byte BossLocalPhase: 0xCBD3E58, 0xA8, 0x68;
    ushort BossTargetID: 0xCBD3E58, 0xA8, 0x6C;
    ulong RealTimeSec: 0xCBD3E58, 0xF0;
    ulong GameTimeSec: 0xCBD3E58, 0xF8;
    uint MissionClearFlag0: 0xCBC16C8, 0x80, 0x10, 0x10, 0x18, 0x10, 0x20;
    uint MissionClearFlag1: 0xCBC16C8, 0x80, 0x10, 0x10, 0x18, 0x10, 0x24;
    uint MissionClearFlag2: 0xCBC16C8, 0x80, 0x10, 0x10, 0x18, 0x10, 0x28;
    uint MissionClearFlag3: 0xCBC16C8, 0x80, 0x10, 0x10, 0x18, 0x10, 0x2C;
}

startup
{
    // This mode starts automatically when the first bossfight starts,
    // and splits when a boss is defeated.
    settings.Add("Bossrush", false);

    // Mission Splits
    settings.Add("MissionSplit", true, "Split when completing a mission");

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

    return current.TransitionPhase == 3 && current.StageID != -1;
}

split
{
    if (settings["MissionSplit"])
    {
        if (current.MissionClearFlag0 != old.MissionClearFlag0) return true;
        if (current.MissionClearFlag1 != old.MissionClearFlag1) return true;
        if (current.MissionClearFlag2 != old.MissionClearFlag2) return true;
        if (current.MissionClearFlag3 != old.MissionClearFlag3) return true;
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
