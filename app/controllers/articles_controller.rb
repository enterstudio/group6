class ArticlesController < ApplicationController
  def list
    #here i will list all my articles


    @ArticleTitle = "Trump ends wild day on campaign trail by calling for protesters' arrests"
    @ArticleAuthor = 'Jeremy Diamond '
    @ArticleDate = "13th December 2016"
    @ArticleDescription = "(CNN)Donald Trump on Saturday called for protesters who disrupt his rallies to be arrested, one day after altercations and protests forced him to cancel a campaign rally in Chicago."

    @ArticleTitle1 = "1- Trump ends wild day on campaign trail by calling for protesters' arrests"
    @ArticleAuthor1 = '1-Jeremy Diamond '
    @ArticleDate1 = "1- 13th December 2016"
    @ArticleDescription1 = "1- (CNN)Donald Trump on Saturday called for protesters who disrupt his rallies to be arrested, one day after altercations and protests forced him to cancel a campaign rally in Chicago."

    @ArticleTitle2 = "2- Trump ends wild day on campaign trail by calling for protesters' arrests"
    @ArticleAuthor2 = '2-Jeremy Diamond '
    @ArticleDate2 = "2- 13th December 2016"
    @ArticleDescription2 = "2- (CNN)Donald Trump on Saturday called for protesters who disrupt his rallies to be arrested, one day after altercations and protests forced him to cancel a campaign rally in Chicago."

    @ArticleTitle3 = "3- Trump ends wild day on campaign trail by calling for protesters' arrests"
    @ArticleAuthor3 = '3-Jeremy Diamond '
    @ArticleDate3 = "3- 13th December 2016"
    @ArticleDescription3 = "3- (CNN)Donald Trump on Saturday called for protesters who disrupt his rallies to be arrested, one day after altercations and protests forced him to cancel a campaign rally in Chicago."

    @list = [
      [@ArticleTitle, @ArticleAuthor, @ArticleDate, @ArticleDescription] ,
      [@ArticleTitle1, @ArticleAuthor1, @ArticleDate1, @ArticleDescription1],
      [@ArticleTitle2, @ArticleAuthor2, @ArticleDate2, @ArticleDescription2],
      [@ArticleTitle3, @ArticleAuthor3, @ArticleDate3, @ArticleDescription3],
    ]

    #render :action => 'list'
   end

   def application
     @surname = params[:surname]
     @firstname= params[:firstname]
     @birthdate =  params[:date_birth]

   end
  #  def araapplication
   #
  #  end
   def arbeiterlaubnis

   end

   def arbriterlaubnis

  end

   def pdf
     @article = Article.new(article_params)

     @surname = article_params[:surname]
     @firstname= article_params[:firstname]
     @date_of_birth=  article_params[:date_of_birth]
     @move_in_date=article_params[:move_in_date]
     @new_address=article_params[:new_address]
     @new_postal_code=article_params[:new_postal_code].to_s
     @old_address=article_params[:old_address]
     @old_postal_code=article_params[:old_postal_code]
     @nationality= article_params[:nationality]
     @religion= article_params[:religion]
     @marital_status= article_params[:marital_status]
     @date_of_marriage= article_params[:date_of_marriage]
     @sirial_number= article_params[:sirial_number]
     @place_of_issue= article_params[:place_of_issue]
     @date_of_issue= article_params[:date_of_issue]
     @expired_date= article_params[:expired_date]
     @sirial_number_pass= article_params[:sirial_number_pass]
     @place_of_issue_pass= article_params[:place_of_issue_pass]
     @date_of_issue_pass= article_params[:date_of_issue_pass]
     @expired_date_pass= article_params[:expired_date_pass]
   end

   def new
    @article = Article.new

     # here i create a new articles and to save the date base
   end

   def edit
     # here i will update all properties of my articles
   end

   def delete
     # here i will delete one articles
   end

   def article_params
     params.require(:article).permit!
   end

end
