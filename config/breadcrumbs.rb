crumb :root do
  link "Home", root_path
end

crumb :edit_user do
  link "マイページ", edit_user_path(current_user.id)
  parent :root
end

crumb :new_user_drink do
  link "アルコールを記録", new_user_drink_path(current_user.id)
  parent :root
end

crumb :user_drink do
  if params[:id]
    drink = current_user.drinks.find(params[:id])
  elsif params[:start_time]
    drink = current_user.drinks.find_by(user_id: current_user.id, start_time: params[:start_time])
  end
  link "飲酒詳細", user_drink_path(user_id: current_user.id, id: drink.id)
  parent :root
end

crumb :edit_user_drink do
  link "飲酒内容修正", edit_user_drink_path(user_id: current_user.id, id: params[:id])
  parent :root
  parent :user_drink
end

crumb :drinks_ranking_info do
  link "個人ページ", drinks_ranking_info_path(user_id: params[:user_id])
  parent :drinks_ranking
end

crumb :drinks_ranking do
  link 'ランキング', drinks_ranking_path(start_time: params[:start_time])
  parent :user_drink
end


# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).