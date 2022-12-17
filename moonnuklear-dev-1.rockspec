package = "moonnuklear"
version = "dev-1"
source = {
    url = "git+https://github.com/Frityet/moonnuklear.git"
}
description = {
    detailed = "MoonNuklear is a Lua binding library for Mitcha Mettke's [Nuklear](https://github.com/Immediate-Mode-UI/nuklear) immediate mode GUI toolkit.",
    homepage = "https://github.com/Frityet/moonnuklear",
    license = "MIT/X11"
}
dependencies = {
    "lua >= 5.1, < 5.5"
}
build = {
    type = "builtin",
    modules = {
        ["moonnuklear.glbackend"] = "moonnuklear/glbackend.lua",
        moonnuklear = {
            sources = {
                "src/atlas.c",
                "src/buffer.c",
                "src/canvas.c",
                "src/compat-5.3.c",
                "src/context.c",
                "src/cursor.c",
                "src/edit.c",
                "src/enums.c",
                "src/flags.c",
                "src/font.c",
                "src/image.c",
                "src/input.c",
                "src/layout.c",
                "src/main.c",
                "src/nuklear.c",
                "src/objects.c",
                "src/panel.c",
                "src/structs.c",
                "src/style.c",
                "src/tracing.c",
                "src/udata.c",
                "src/utils.c",
                "src/versions.c",
                "src/widgets.c",
                "src/window.c",
            },

            incdirs = { "src", "src/nuklear" }
        },
    },
    copy_directories = {
        "doc", "examples"
    }
}
