local function open_pdf_in_zathura()
  -- 현재 파일 이름 가져오기
  local file_name = vim.fn.expand "%:p"
  if not file_name:match "%.tex$" then
    vim.notify("현재 파일이 .tex 파일이 아닙니다.", vim.log.levels.ERROR)
    return
  end

  -- .tex를 .pdf로 변경
  local pdf_file = file_name:gsub("%.tex$", ".pdf")

  -- Zathura 백그라운드 실행
  local command = string.format("zathura '%s'", pdf_file)
  local success = vim.fn.jobstart(command, {
    detach = true, -- 백그라운드에서 실행
    on_exit = function(_, exit_code)
      if exit_code == 0 then
        vim.notify("PDF가 Zathura에서 닫혔습니다: " .. pdf_file, vim.log.levels.INFO)
      else
        vim.notify("PDF를 열지 못했습니다: " .. pdf_file, vim.log.levels.ERROR)
      end
    end,
  })

  if not success then vim.notify("Zathura 실행 중 문제가 발생했습니다.", vim.log.levels.ERROR) end
end

-- 사용자 명령어 등록
vim.api.nvim_create_user_command(
  "OpenPDF",
  open_pdf_in_zathura,
  { desc = "현재 .tex 파일의 PDF를 Zathura로 열기" }
)

return {}
