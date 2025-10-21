{
  config,
  pkgs,
  ...
}: {
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;

    settings = {
      # Monitor configuration
      monitor = [
        ",preferred,auto,auto"
        ",preferred,auto,1.2"
      ];

      # Environment variables
      env = [
        "XCURSOR_SIZE,24"
        "HYPRCURSOR_SIZE,24"
      ];

      # Program variables
      "$terminal" = "ghostty";
      "$fileManager" = "dolphin";
      "$menu" = "wofi --show drun";
      "$mainMod" = "SUPER";

      # Autostart
      exec-once = [
        ''bash -c "wl-paste --watch cliphist store &"''
        "dms run"
      ];

      # General settings
      general = {
        gaps_in = 5;
        gaps_out = 5;
        border_size = 2;
        "col.inactive_border" = "rgba(ffffffcc)";
        resize_on_border = false;
        allow_tearing = false;
        layout = "dwindle";
      };

      # Decoration settings
      decoration = {
        rounding = 8;
        rounding_power = 2;
        active_opacity = 0.97;
        inactive_opacity = 0.93;

        shadow = {
          enabled = true;
          range = 12;
          render_power = 4;
          color = "rgba(16161eff)";
        };

        blur = {
          enabled = true;
          size = 8;
          passes = 3;
          ignore_opacity = false;
          vibrancy = 0.18;
          brightness = 1.0;
          contrast = 1.0;
        };
      };

      # Animations
      animations = {
        enabled = true;

        bezier = [
          "easeOutQuint,0.23,1,0.32,1"
          "easeInOutCubic,0.65,0.05,0.36,1"
          "linear,0,0,1,1"
          "almostLinear,0.5,0.5,0.75,1.0"
          "quick,0.15,0,0.1,1"
        ];

        animation = [
          "global,1,10,default"
          "border,1,5.39,easeOutQuint"
          "windows,1,4.79,easeOutQuint"
          "windowsIn,1,4.1,easeOutQuint,popin 87%"
          "windowsOut,1,1.49,linear,popin 87%"
          "fadeIn,1,1.73,almostLinear"
          "fadeOut,1,1.46,almostLinear"
          "fade,1,3.03,quick"
          "layers,1,3.81,easeOutQuint"
          "layersIn,1,4,easeOutQuint,fade"
          "layersOut,1,1.5,linear,fade"
          "fadeLayersIn,1,1.79,almostLinear"
          "fadeLayersOut,1,1.39,almostLinear"
          "workspaces,1,1.94,almostLinear,fade"
          "workspacesIn,1,1.21,almostLinear,fade"
          "workspacesOut,1,1.94,almostLinear,fade"
        ];
      };

      # Dwindle layout
      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      # Master layout
      master = {
        new_status = "master";
      };

      # Misc settings
      misc = {
        force_default_wallpaper = -1;
        disable_hyprland_logo = false;
      };

      # Input settings
      input = {
        kb_layout = "us";
        follow_mouse = 1;
        sensitivity = 0;

        touchpad = {
          natural_scroll = false;
        };
      };

      # Per-device config
      device = {
        name = "epic-mouse-v1";
        sensitivity = -0.5;
      };

      # Keybindings
      bind = [
        # Application and system controls
        "$mainMod,SPACE,exec,dms ipc call spotlight toggle"
        "$mainMod,V,exec,dms ipc call clipboard toggle"
        "$mainMod SHIFT,M,exec,dms ipc call processlist toggle"
        "$mainMod,N,exec,dms ipc call notifications toggle"
        "$mainMod,COMMA,exec,dms ipc call settings toggle"
        "$mainMod SHIFT,P,exec,dms ipc call notepad toggle"
        "$mainMod ALT,L,exec,dms ipc call lock lock"
        "$mainMod,X,exec,dms ipc call powermenu toggle"
        "$mainMod SHIFT,C,exec,dms ipc call control-center toggle"

        # Common apps
        "$mainMod,Q,exec,$terminal"
        "$mainMod,W,exec,brave"
        "$mainMod,C,killactive,"
        "$mainMod,M,exit,"
        "$mainMod,E,exec,$fileManager"
        "$mainMod,F,togglefloating,"
        "$mainMod,R,exec,$menu"
        "$mainMod,P,pseudo,"
        "$mainMod SHIFT,J,togglesplit,"

        # Move focus
        "$mainMod,H,movefocus,l"
        "$mainMod,L,movefocus,r"
        "$mainMod,K,movefocus,u"
        "$mainMod,J,movefocus,d"

        # Workspaces
        "$mainMod,1,workspace,1"
        "$mainMod,2,workspace,2"
        "$mainMod,3,workspace,3"
        "$mainMod,4,workspace,4"
        "$mainMod,5,workspace,5"
        "$mainMod,6,workspace,6"
        "$mainMod,7,workspace,7"
        "$mainMod,8,workspace,8"
        "$mainMod,9,workspace,9"
        "$mainMod,0,workspace,10"

        # Move to workspace
        "$mainMod SHIFT,1,movetoworkspace,1"
        "$mainMod SHIFT,2,movetoworkspace,2"
        "$mainMod SHIFT,3,movetoworkspace,3"
        "$mainMod SHIFT,4,movetoworkspace,4"
        "$mainMod SHIFT,5,movetoworkspace,5"
        "$mainMod SHIFT,6,movetoworkspace,6"
        "$mainMod SHIFT,7,movetoworkspace,7"
        "$mainMod SHIFT,8,movetoworkspace,8"
        "$mainMod SHIFT,9,movetoworkspace,9"
        "$mainMod SHIFT,0,movetoworkspace,10"

        # Special workspace
        "$mainMod,S,togglespecialworkspace,magic"
        "$mainMod SHIFT,S,movetoworkspace,special:magic"

        # Scroll through workspaces
        "$mainMod,mouse_down,workspace,e+1"
        "$mainMod,mouse_up,workspace,e-1"

        # Night mode
        "$mainMod SHIFT,N,exec,dms ipc call night toggle"
      ];

      # Mouse bindings
      bindm = [
        "$mainMod,mouse:272,movewindow"
        "$mainMod,mouse:273,resizewindow"
      ];

      # Audio and brightness controls (bindl for locked state)
      bindl = [
        ",XF86AudioRaiseVolume,exec,dms ipc call audio increment 3"
        ",XF86AudioLowerVolume,exec,dms ipc call audio decrement 3"
        ",XF86AudioMute,exec,dms ipc call audio mute"
        ",XF86AudioMicMute,exec,dms ipc call audio micmute"
        '',XF86MonBrightnessUp,exec,dms ipc call brightness increment 5 ""''
        '',XF86MonBrightnessDown,exec,dms ipc call brightness decrement 5 ""''
      ];

      # Window rules
      windowrule = [
        "suppressevent maximize,class:.*"
        "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
      ];

      windowrulev2 = [
        "float,class:nm-connection-editor"
      ];
    };
  };
}
