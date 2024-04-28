return {
  "andythigpen/nvim-coverage",
  lazy = true,
  cmd = {
    "Coverage",
    "CoverageLoad",
    "CoverageLoadLcov",
    "CoverageShow",
    "CoverageHide",
    "CoverageToggle",
    "CoverageClear",
    "CoverageSummary",
  },
  config = {
    signs = {
      covered = { priority = 80 }, -- use a higher value than diagnostics or gitsigns
      uncovered = { priority = 80 },
    },
  },
}
