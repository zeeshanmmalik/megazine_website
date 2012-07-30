begin
  namespace :nakedpunch do
    task :upload_article_images => :environment do
      articles_dir = '/home/zeeshan/projects/naked_punch/nakedpunch_21_Jul_2012/nakedpunch_code_data/public/uploads/articles'
      Dir.foreach(articles_dir) do |item| 
        next if item == '.' or item == '..'
        article = Article.find_by_id(item)
        if article
          puts article.title
          if article.image.nil?
            Dir.foreach("#{articles_dir}/#{item}") do |image|
              next if image == '.' or image == '..'
              puts "*********** #{image}"
              attached_image = Image.new
              attached_image.imageable = article
              puts "#{articles_dir}/#{item}/#{image}"
              attached_image.attached_image = File.open("#{articles_dir}/#{item}/#{image}", 'rb')
              attached_image.save!
              break
            end
          end
        end
      end
    end

    task :upload_slide_images => :environment do
      slides_dir = '/home/zeeshan/projects/naked_punch/nakedpunch_21_Jul_2012/nakedpunch_code_data/public/uploads/slides/images'
      Dir.foreach(slides_dir) do |item|
        next if item == '.' or item == '..'
        slide = Slide.find_by_id(item)
        if slide
          if slide.image.nil?
            Dir.foreach("#{slides_dir}/#{item}") do |image|
              next if image == '.' or image == '..'
              unless File::directory?("#{slides_dir}/#{item}/#{image}")
                attached_image = Image.new
                attached_image.imageable = slide
                attached_image.attached_image = File.open("#{slides_dir}/#{item}/#{image}")
                attached_image.save!
                break
              end
            end
          end
        end  
      end
    end
  end
end
