state("Samsara-Win64-Shipping")
{
    bool isLoading : 0x6B238A8, 0x48, 0x78;
    string300 loadedMap : 0x0673FAD0, 0x50, 0x18, 0x20, 0xAE0, 0x0;
    float x : 0x06B80AC0, 0x10, 0x18, 0x150, 0x38, 0x170, 0xB0, 0x264;
    float y : 0x06B80AC0, 0x10, 0x18, 0x150, 0x38, 0x170, 0xB0, 0x26C;
    float z : 0x06B80AC0, 0x10, 0x18, 0x150, 0x38, 0x170, 0xB0, 0x274;
}

init
{
    print("Base address: " + modules.First().BaseAddress);

    vars.level1_boss = false;
    vars.level2_boss = false;
    vars.level2_mech = false;
    vars.level2_fire = false;
    vars.level3_strong = false;
    vars.level4_caster = false;
    vars.level5_credits = false;
}

onStart
{
    vars.level1_boss = false;
    vars.level2_boss = false;
    vars.level2_mech = false;
    vars.level2_fire = false;
    vars.level3_strong = false;
    vars.level4_caster = false;
    vars.level5_credits = false;
}

start
{
    return old.loadedMap == "/Game/Level/MainMenu"
        && current.loadedMap == "/Game/Level_NEW/Pack_V1/Level_00/level_00_Base";
}

update
{
    // print("x: " + current.x + ", y: " + current.y + ", z: " + current.z);
}

split
{
    if (old.loadedMap == "/Game/Level_NEW/Pack_V1/Level_00/level_00_Base"
        && current.loadedMap == "/Game/Level_NEW/Pack_V1/Level_00/CunLuo/Level_0_CunLuo_Base")
        return true;
    if (old.loadedMap == "/Game/Level_NEW/Pack_V1/Level_00/CunLuo/Level_0_CunLuo_Base"
        && current.loadedMap == "/Game/Level_NEW/Pack_V1/Level_01/Level_01_BASE")
        return true;
    if (!vars.level1_boss
        && current.loadedMap == "/Game/Level_NEW/Pack_V1/Level_01/Level_01_BASE"
        && current.x >= -8.541297913 && current.x <= -8.531900406
        && current.y >= 8.484891891 && current.y <= 8.490492821
        && current.z >= -5.57 && current.z <= -5.52)
    {
        vars.level1_boss = true;
        return true;
    }
    if (old.loadedMap == "/Game/Level_NEW/Pack_V1/Level_01/Level_01_BASE"
        && current.loadedMap == "/Game/Level_NEW/Pack_V1/Level_01/01-Paoding/Level_01_PD_BASE")
        return true;
    if (old.loadedMap == "/Game/Level_NEW/Pack_V1/Level_01/01-Paoding/Level_01_PD_BASE"
        && current.loadedMap == "/Game/Level_NEW/Pack_V1/Level_02/WuChang_BiAn/Level_02_BiAn_Base")
        return true;
    if (!vars.level2_boss
        && current.loadedMap == "/Game/Level_NEW/Pack_V1/Level_02/WuChang_BiAn/Level_02_BiAn_Base"
        && current.x >= 5.209 && current.x <= 5.271
        && current.y >= -6.54 && current.y <= -6.530
        && current.z >= -5.38 && current.z <= -5.3)
    {
        vars.level2_boss = true;
        return true;
    }
    if (!vars.level2_mech
        && current.loadedMap == "/Game/Level_NEW/Pack_V1/Level_02/WuChang_BiAn/Level_02_BiAn_Base"
        && current.x >= -6.0546 && current.x <= -6.0377
        && current.y >= 6.277 && current.y <= 6.285
        && current.z >= -5.013 && current.z <= -4.01)
    {
        vars.level2_mech = true;
        return true;
    }
    if (old.loadedMap == "/Game/Level_NEW/Pack_V1/Level_02/WuChang_BiAn/Level_02_BiAn_Base"
        && current.loadedMap == "/Game/Level_NEW/Pack_V1/Level_02/Level_02_BASE")
        return true;
    if (!vars.level2_fire
        && current.loadedMap == "/Game/Level_NEW/Pack_V1/Level_02/Level_02_BASE"
        && current.x >= -8.9055 && current.x <= -8.9046
        && current.y >= 8.60137 && current.y <= 8.60593
        && current.z >= -6.0364 && current.z <= -6.02)
    {
        vars.level2_fire = true;
        return true;
    }
    if (old.loadedMap == "/Game/Level_NEW/Pack_V1/Level_02/Level_02_BASE"
        && current.loadedMap == "/Game/Level_NEW/Pack_V1/Level_03/Level_03_BASE")
        return true;
    if (!vars.level3_strong
        && current.loadedMap == "/Game/Level_NEW/Pack_V1/Level_03/Level_03_BASE"
        && current.x >= -7.8259 && current.x <= -7.8197
        && current.y >= 7.7294 && current.y <= 7.73332
        && current.z >= 5.2786 && current.z <= 5.45)
    {
        vars.level3_strong = true;
        return true;
    }
    if (old.loadedMap == "/Game/Level_NEW/Pack_V1/Level_03/Level_03_BASE"
        && current.loadedMap == "/Game/Level_NEW/Pack_V1/Level_03/WuJi/Level_03_WuJi_Base")
        return true;
    if (old.loadedMap == "/Game/Level_NEW/Pack_V1/Level_03/WuJi/Level_03_WuJi_Base"
        && current.loadedMap == "/Game/Level_NEW/Pack_V1/Level_04/Level_04_BASE")
        return true;
    if (!vars.level4_caster
        && current.loadedMap == "/Game/Level_NEW/Pack_V1/Level_04/Level_04_BASE"
        && current.x >= -7.8141 && current.x <= -7.81129
        && current.y >= 7.419 && current.y <= 7.44552
        && current.z >= 5.8 && current.z <= 5.86)
    {
        vars.level4_caster = true;
        return true;
    }
    /* if (!vars.level5_credits
        && current.loadedMap == "/Game/Level_NEW/Pack_V1/Level_05/Level_05_BASE"
        && current.x >= 7.276257515 && current.x <= 7.29
        && current.y >= 6.618728825 && current.y <= 6.62580061
        && current.z >= 6.12 && current.z <= 6.152735729)
    {
        vars.level5_credits = true;
        return true;
    } */
}

isLoading
{
    return current.isLoading;
}