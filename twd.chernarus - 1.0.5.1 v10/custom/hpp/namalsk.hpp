    class RscAPSI_h1
    {
        idd = -1;
        duration = 4;
        fadein = 0;
        movingEnable = 0;
        enableSimulation = 0;
        enableDisplay = 0;
        class controls
        {
            class APSILog: RscTextT
            {
                x = 0.5;
                y = 0.99;
                w = 0.5;
                h = 0.03;
                text = "APSI: Stronger activity of floax field has been detected..";
                colorBackground[] = {0.5,0.5,0.5,0.4};
                ColorText[] = {1.0,0.2,0.1,1};
            };
        };
    };
    class RscAPSI_h2: RscAPSI_h1
    {
        class controls
        {
            class APSILog: RscTextT
            {
                x = 0.5;
                y = 0.99;
                w = 0.4;
                h = 0.03;
                text = "APSI: EVR sequence detected..";
                colorBackground[] = {0.5,0.5,0.5,0.4};
                ColorText[] = {1.0,0.0,0.2,1};
            };
        };
    };
    class RscAPSI_h3: RscAPSI_h1
    {
        class controls
        {
            class APSILog: RscTextT
            {
                x = 0.5;
                y = 0.99;
                w = 0.4;
                h = 0.03;
                text = "APSI: EM and PSI protection enabled..";
                colorBackground[] = {0.5,0.5,0.5,0.4};
                ColorText[] = {0.0,1.0,0.2,1};
            };
        };
    };
    class RscAPSI_h4: RscAPSI_h1
    {
        class controls
        {
            class APSILog: RscTextT
            {
                x = 0.5;
                y = 0.99;
                w = 0.4;
                h = 0.03;
                text = "APSI: Ready..";
                colorBackground[] = {0.5,0.5,0.5,0.4};
                ColorText[] = {0.0,1.0,0.2,1};
            };
        };
    };
    class RscAPSI_h5: RscAPSI_h1
    {
        class controls
        {
            class APSILog: RscTextT
            {
                x = 0.5;
                y = 0.99;
                w = 0.4;
                h = 0.03;
                text = "APSI: EVR sequence start..";
                colorBackground[] = {0.5,0.5,0.5,0.4};
                ColorText[] = {1.0,0.0,0.2,1};
            };
        };
    };
    class RscAPSI_h6: RscAPSI_h1
    {
        class controls
        {
            class APSILog: RscTextT
            {
                x = 0.5;
                y = 0.99;
                w = 0.4;
                h = 0.03;
                text = "APSI: End of EVR..";
                colorBackground[] = {0.5,0.5,0.5,0.4};
                ColorText[] = {0.0,1.0,0.2,1};
            };
        };
    };
    class RscAPSI_ha: RscAPSI_h1
    {
        class controls
        {
            class APSILog: RscTextT
            {
                x = 0.5;
                y = 0.99;
                w = 0.4;
                h = 0.03;
                text = "Blowout module";
                colorBackground[] = {0.5,0.5,0.5,0.4};
                ColorText[] = {0.0,1.0,0.2,1};
            };
        };
    };
};