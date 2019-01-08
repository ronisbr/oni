import * as React from "react"
import * as Oni from "oni-api"

export const activate = (oni: Oni.Plugin.Api) => {
    console.log("config activated")

    //
    oni.input.bind("<c-enter>", () => console.log("Control+Enter was pressed"))

    //
    // Or remove the default bindings here by uncommenting the below line:
    //
    // oni.input.unbind("<c-p>")
    //
    // asdlfkahjsldf as;lkdf as;dlkfj ask;ldfj

}

export const deactivate = (oni: Oni.Plugin.Api) => {
   console.log("config deactivated")
}

export const configuration = {
    "editor.fontSize": "13px",
    "editor.fontFamily": "Monaco",
    "oni.loadInitVim": "~/.config/oni/init.vim",
    "ui.animations.enabled": true,
    "ui.colorscheme": "onedark",
    "ui.fontSmoothing": "auto",
    "workspace.autoDetectWorkspace": "always",
}
