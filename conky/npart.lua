conky.config = {
    -- Run settings
    total_run_times = 0,
    update_interval = 1,

    -- Positioning
    alignment = 'bottom_left',
    gap_x = 130,
    gap_y = 120,
    minimum_width = 150,
    maximum_width = 150,
    minimum_height = 150,

    -- Draw settings
    double_buffer = true,
    draw_shades = false,
    draw_blended = false,

    -- Compositor settings
    own_window = true,
    own_window_argb_visual = true,
    own_window_argb_value = 0,
    own_window_transparent = true,
    own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
    own_window_type = 'dock'
};

conky.text = [[
${if_running spotify}${color #ffffff}${exec ./scripts/fetch-art spotify}
	${image ./data/spotify.png -p 0,0 -s 150x150 -n}
${else}${if_match "" != "${exec playerctl -p vlc status}"}${exec ./scripts/fetch-art vlc}
	${image ./data/vlc.png -p 0,0 -s 150x150 -n}
${else}${if_match "" != "${exec playerctl -p Lollypop status}"}${exec ./scripts/fetch-art Lollypop}
    ${image ./data/Lollypop.png -p 0,0 -s 150x150 -n}
${else}${if_match "" != "${exec playerctl -p spotifyd status}"}${exec ./scripts/fetch-art spotifyd}
    ${image ./data/spotifyd.png -p 0,0 -s 150x150 -n}
${else}${if_running cmus}${exec ./scripts/fetch-art cmus}
	${image ./data/cmus.png -p 0,0 -s 150x150 -n}
${endif}
${endif}
${endif}
${endif}
]];


