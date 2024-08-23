
function Meta(meta) 
  
  local project_profile = os.getenv("QUARTO_PROFILE")
  -- inject project profile into html <meta> tag for use by ejs template
  quarto.doc.include_text("in-header", "<meta project-profile='" ..
    tostring(project_profile) .. "'>")
  
end
