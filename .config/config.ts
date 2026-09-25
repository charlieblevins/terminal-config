// ~/.config/opencode/plugin/sandbox.ts
import type { Plugin } from "@opencode-ai/plugin"

const SETTINGS = `${process.env.HOME}/.config/srt/.srt-opencode.json`
const q = (s: string) => `'${s.replace(/'/g, `'\\''`)}'`

export const Sandbox: Plugin = async () => ({
  "tool.execute.before": async (input, output) => {
    if (input.tool !== "bash") return
    // Fail closed: wrapping is unconditional, so a missing srt errors instead of running unsandboxed.
    output.args.command = `srt --settings ${q(SETTINGS)} ${q(output.args.command)}`
  },
})
