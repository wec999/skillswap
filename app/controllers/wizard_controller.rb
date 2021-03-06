class WizardController < ApplicationController
before_action :set_user


  def profile
  end

  def add_learn_skill
  end

  def add_teach_skill
  end

  def update_user
    @user.update_attributes(user_params)
    # byebug
    if @user.save
      redirect_to wizard_add_learn_skill_path
    else
      render 'wizard/profile'
    end
  end

  def update_learn_skill
    # byebug
    skills = user_params.to_h[:skill_ids]
    skills.each do |skill|
        UserSkill.create(user: current_user, skill_id: skill, role: "student")
    end
    redirect_to wizard_add_teach_skill_path
  end

  def update_teach_skill
    # byebug
    skills = user_params.to_h[:skill_ids]
    skills.each do |skill|
        UserSkill.create(user: current_user, skill_id: skill, role: "teacher")
    end
    redirect_to edit_user_registration_path
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :date_of_birth, :nationality, :city, :photo, :bio, :photo_cache, skill_ids: [])
  end

end
