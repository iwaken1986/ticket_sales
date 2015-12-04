ActiveAdmin.register Event do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

  index do
    column :date
    column :name
    column :category
    column :ticket_count
  end

  form do |f|
    f.inputs do
      f.input :date
      f.input :name
      f.input :category, as: :select , collection: %w{ 音楽 スポーツ 映画 演劇 クラシックイベント・アート アニメ 韓流}
      f.input :ticket_count
    end
    f.actions
  end

  permit_params :date, :name, :category, :ticket_count

end
