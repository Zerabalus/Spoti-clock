conky.config = {
    -- Run settings
    total_run_times = 0,
    update_interval = 1,

    -- Positioning
    alignment = 'bottom_left',
    gap_x = 48,
    gap_y = 80,
    -- 
    minimum_width = 250,
    maximum_width = 1500,
    minimum_height = 100,

    -- Draw settings
    double_buffer = true,
    draw_shades = false,
    draw_blended = true,
    stippled_borders = 10,

    -- Compositor settings
    own_window = true,
    own_window_argb_visual = true,
    --transparencia
    own_window_argb_value = 15,
    own_window_transparent = false,
    own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
    own_window_type = 'desktop',
    -- own_window_type = 'dock',

    -- color de fondo
    own_window_colour = 'FF0000',
    -- color xiaosito
    -- own_window_colour = '58a69d', 
    double_buffer = true,
    background = true,
    xinerama_head = 2,

    -- Text settings
    uppercase = true,
    use_xft = true,
    override_utf8_locale = true
};

conky.text = [[
${if_running spotify}${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=18} REPRODUCIENDO :
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=15}
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=46}${exec playerctl -p spotify metadata artist}
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=23}${exec playerctl -p spotify metadata title}

${else}${if_match "" != "${exec playerctl -p spotifyd status}"}${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=18} REPRODUCIENDO :
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=15}
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=46}${exec playerctl -p spotifyd metadata artist}
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=23}${exec playerctl -p spotifyd metadata title}

${else}${if_match "" != "${exec playerctl -p vlc status}"}${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=18} REPRODUCIENDO :
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=15}
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=46}${exec playerctl -p vlc metadata artist}
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=23}${exec playerctl -p vlc metadata title}

${else}${if_match "" != "${exec playerctl -p Lollypop status}"}${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=18} REPRODUCIENDO :
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=15}
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=46}${exec playerctl -p Lollypop metadata artist}
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=23}${exec playerctl -p Lollypop metadata title}

${else}${if_running cmus}${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=18} REPRODUCIENDO :
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=15}
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=46}${exec cmus-remote -Q 2>/dev/null | grep 'tag artist' | cut -d " " -f 3-}
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=23}${exec cmus-remote -Q 2>/dev/null | grep title | cut -d " " -f 3- }

${else}${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=80}${time %H:%M:%S}${font ProFont IIx Nerd Font Mono:pixelsize=65}
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=35}${time %B} ${time %d}${if_match ${time %d}==1}st${else}${if_match ${time %d}==2}nd${else}${if_match ${time %d}==3}rd${else}${if_match ${time %d}==4}th${endif}${endif}${endif}${endif} ${time %Y}${endif}${endif}${endif}${endif}${endif}
]];

