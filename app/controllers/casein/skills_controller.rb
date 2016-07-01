# Scaffolding generated by Casein v5.1.1.5

module Casein
  class SkillsController < Casein::CaseinController
  
    ## optional filters for defining usage according to Casein::AdminUser access_levels
    # before_filter :needs_admin, :except => [:action1, :action2]
    # before_filter :needs_admin_or_current_user, :only => [:action1, :action2]
  
    def index
      @casein_page_title = 'Skills'
  		@skills = Skill.order(sort_order(:name)).paginate :page => params[:page]
    end
  
    def show
      @casein_page_title = 'View skill'
      @skill = Skill.find params[:id]
    end
  
    def new
      @casein_page_title = 'Add a new skill'
    	@skill = Skill.new
    end

    def create
      @skill = Skill.new skill_params
    
      if @skill.save
        flash[:notice] = 'Skill created'
        redirect_to casein_skills_path
      else
        flash.now[:warning] = 'There were problems when trying to create a new skill'
        render :action => :new
      end
    end
  
    def update
      @casein_page_title = 'Update skill'
      
      @skill = Skill.find params[:id]
    
      if @skill.update_attributes skill_params
        flash[:notice] = 'Skill has been updated'
        redirect_to casein_skills_path
      else
        flash.now[:warning] = 'There were problems when trying to update this skill'
        render :action => :show
      end
    end
 
    def destroy
      @skill = Skill.find params[:id]

      @skill.destroy
      flash[:notice] = 'Skill has been deleted'
      redirect_to casein_skills_path
    end
  
    private
      
      def skill_params
        params.require(:skill).permit(:name, :ability_ids)
      end

  end
end