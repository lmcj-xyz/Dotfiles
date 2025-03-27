local eng_dict = {}
for word in io.open(vim.fn.stdpath("config") .. "/spell/en.utf-8.add", "r"):lines() do
    table.insert(eng_dict, word)
end
return {
   filetypes = { "latex", "tex", "bib", },
   settings = {
       ltex = {
           enabled = {'bib', 'context', 'latex', 'plaintex', 'tex'},
           language = 'en-GB',
           dictionary = {
               ["en-GB"] = eng_dict,
           },
       }
   }
}
