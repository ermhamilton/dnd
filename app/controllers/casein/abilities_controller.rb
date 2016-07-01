# Scaffolding generated by Casein v5.1.1.5

module Casein
  class AbilitiesController < Casein::CaseinController
  
    ## optional filters for defining usage according to Casein::AdminUser access_levels
    # before_filter :needs_admin, :except => [:action1, :action2]
    # before_filter :needs_admin_or_current_user, :only => [:action1, :action2]
  
    def index
      @casein_page_title = 'Abilities'
  		@abilities = Ability.order(sort_order(:name)).paginate :page => params[:page]
    end
  
    def show
      @casein_page_title = 'View ability'
      @ability = Ability.find params[:id]
    end
  
    def new
      @casein_page_title = 'Add a new ability'
    	@ability = Ability.new
    end

    def create
      @ability = Ability.new ability_params
    
      if @ability.save
        flash[:notice] = 'Ability created'
        redirect_to casein_abilities_path
      else
        flash.now[:warning] = 'There were problems when trying to create a new ability'
        render :action => :new
      end
    end
  
    def update
      @casein_page_title = 'Update ability'
      
      @ability = Ability.find params[:id]
    
      if @ability.update_attributes ability_params
        flash[:notice] = 'Ability has been updated'
        redirect_to casein_abilities_path
      else
        flash.now[:warning] = 'There were problems when trying to update this ability'
        render :action => :show
      end
    end
 
    def destroy
      @ability = Ability.find params[:id]

      @ability.destroy
      flash[:notice] = 'Ability has been deleted'
      redirect_to casein_abilities_path
    end
  
    private
      
      def ability_params
        params.require(:ability).permit(:name, :abbreviation)
      end

  end
end