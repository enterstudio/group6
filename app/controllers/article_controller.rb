class ArticleController < ApplicationController
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
   def set_locale
   I18n.locale = params[:locale] || I18n.default_locale
  end
   def application
     @surname = params[:surname]
     @firstname= params[:firstname]
     @birthdate =  params[:date_birth]

   end
   def araapplication

   end
   def arbeiterlaubnis

   end

   def arbriterlaubnis

  end

   def pdf
     @surname = params[:surname]
     @firstname= params[:firstname]
     @birthdate =  params[:date_birth]
     @move_in_date=params[:move_in_date]
     @new_address=params[:new_address]
     @new_postal_code=params[:new_postal_code].to_s
     @old_address=params[:old_address]
     @old_postal_code=params[:old_postal_code]
     @nationality= params[:nationality]
     @religion= params[:religion]
   end

   def show
     # here i will see my article detail page
   end

   def new
    @article = Article.new

     # here i create a new article and to save the date base
   end

   def edit
     # here i will update all properties of my article
   end

   def delete
     # here i will delete one article
   end

end
