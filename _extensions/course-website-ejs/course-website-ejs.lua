
function Meta(meta) 
  
  --local project_profile = os.getenv("QUARTO_PROFILE")
  local project_profile = "staff-site"
  
  -- inject project profile into html <meta> tag for use by ejs template
  quarto.doc.include_text("in-header", "<meta project-profile='" ..
    tostring(project_profile) .. "'>")
  
  quarto.doc.include_text("in-header", "<script>const projectProfile = document.querySelector('meta[project-profile]')?.getAttribute('project-profile');</script>")
   
   -- Create an Inlines object with a single Str element
  
  if project_profile ~= nil then
    
    local str_element = pandoc.Str(project_profile)
    local inlines = pandoc.Inlines(str_element)
    
    -- Create the nested metadata structure
    meta.listing = pandoc.MetaMap({
      template_params = pandoc.MetaMap({
        projectProfile = pandoc.MetaInlines(inlines)
      })
    })
  
    quarto.log.output(meta)
    
  end
  

end
