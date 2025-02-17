conky.config = {
    -- Configuración de ejecución
    total_run_times = 0, -- Ejecutar infinitamente
    update_interval = 1, -- Actualizar cada segundo

    -- Configuración de posicionamiento
    alignment = 'bottom_left', -- Alineación en la esquina inferior izquierda
    gap_x = 100, -- Espacio en el eje X
    gap_y = 80, -- Espacio en el eje Y
    minimum_width = 150, -- Ancho mínimo de la ventana
    maximum_width = 1500, -- Ancho máximo de la ventana
    minimum_height = 100, -- Alto mínimo de la ventana

    -- Configuración de dibujo
    double_buffer = true, -- Doble buffer para mejorar la visualización
    draw_shades = false, -- No sombrear los elementos
    draw_blended = false, -- No fusionar colores
    stippled_borders = 10, -- Bordes punteados

    -- Configuración del compositor
    own_window = true, -- Crear una ventana propia
    own_window_argb_visual = true, -- Activar visualización ARGB
    own_window_argb_value = 80, -- Transparencia del 30%
    own_window_transparent = true, -- Ventana no transparente
    own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager', -- Propiedades de la ventana
    own_window_type = 'desktop', -- Ventana de escritorio

    -- Configuración de texto
    uppercase = true, -- Usar texto en mayúsculas
    use_xft = true, -- Usar Xft para fuentes de calidad
    override_utf8_locale = true, -- Sobrescribir la configuración regional UTF-8
    font = "ProFont IIx Nerd Font Mono", -- Fuente a utilizar
    draw_outline = true
};

conky.text = [[
${if_running spotify}${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=18} REPRODUCIENDO :
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=15}
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=44}       ${font ProFont IIx Nerd Font Mono:pixelsize=46}${exec playerctl -p spotify metadata artist}${font ProFont IIx Nerd Font Mono:pixelsize=10}
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=44}       ${font ProFont IIx Nerd Font Mono:pixelsize=23}${exec playerctl -p spotify metadata title}

${else}${if_match "" != "${exec playerctl -p spotifyd status}"}${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=18} REPRODUCIENDO :
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=15}
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=44}     ${font ProFont IIx Nerd Font Mono:pixelsize=46}${exec playerctl -p spotifyd metadata artist}${font ProFont IIx Nerd Font Mono:pixelsize=10}
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=44}     ${font ProFont IIx Nerd Font Mono:pixelsize=23}${exec playerctl -p spotifyd metadata title}

${else}${if_match "" != "${exec playerctl -p vlc status}"}${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=18} REPRODUCIENDO :
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=15}
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=44}     ${font ProFont IIx Nerd Font Mono:pixelsize=46}${exec playerctl -p vlc metadata artist}${font ProFont IIx Nerd Font Mono:pixelsize=10}
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=44}     ${font ProFont IIx Nerd Font Mono:pixelsize=23}${exec playerctl -p vlc metadata title}

${else}${if_match "" != "${exec playerctl -p Lollypop status}"}${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=18} REPRODUCIENDO :
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=15}
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=44}     ${font ProFont IIx Nerd Font Mono:pixelsize=46}${exec playerctl -p Lollypop metadata artist}${font ProFont IIx Nerd Font Mono:pixelsize=10}
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=44}     ${font ProFont IIx Nerd Font Mono:pixelsize=23}${exec playerctl -p Lollypop metadata title}

${else}${if_running cmus}${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=18} REPRODUCIENDO :
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=15}
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=44}     ${font ProFont IIx Nerd Font Mono:pixelsize=46}${exec cmus-remote -Q 2>/dev/null | grep 'tag artist' | cut -d " " -f 3-}${font ProFont IIx Nerd Font Mono:pixelsize=10}
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=44}     ${font ProFont IIx Nerd Font Mono:pixelsize=23}${exec cmus-remote -Q 2>/dev/null | grep title | cut -d " " -f 3- }

${else}
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=80}${time %I:%M %p}${font ProFont IIx Nerd Font Mono:pixelsize=65}
${color #ffffff}${font ProFont IIx Nerd Font Mono:pixelsize=35}${time %B} ${time %d}${if_match ${time %d}==1}st${else}${if_match ${time %d}==2}nd${else}${if_match ${time %d}==3}rd${else}${if_match ${time %d}==4}th${else}${if_match ${time %d}==5}th${else}${if_match ${time %d}==5}th${else}${if_match ${time %d}==7}th${else}${if_match ${time %d}==8}th${else}${if_match ${time %d}==9}th${else}${if_match ${time %d}==10}th${else}${if_match ${time %d}==11}th${else}${if_match ${time %d}==12}th${else}${if_match ${time %d}==13}th${else}${if_match ${time %d}==14}th${else}${if_match ${time %d}==15}th${else}${if_match ${time %d}==16}th${else}${if_match ${time %d}==17}th${else}${if_match ${time %d}==18}th${else}${if_match ${time %d}==19}th${else}${if_match ${time %d}==20}th${else}${if_match ${time %d}==21}st${else}${if_match ${time %d}==22}nd${else}${if_match ${time %d}==23}rd${else}${if_match ${time %d}==24}th${else}${if_match ${time %d}==25}th${else}${if_match ${time %d}==26}th${else}${if_match ${time %d}==27}th${else}${if_match ${time %d}==28}th${else}${if_match ${time %d}==29}th${else}${if_match ${time %d}==30}th${else}${if_match ${time %d}==31}st${else}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif} ${time %Y}${endif}${endif}${endif}${endif}${endif}
]];
