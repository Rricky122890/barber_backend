class Api::V1::AppointmentsController < ApplicationController
  skip_before_action :authorized

  def index
    # skip_authorized
    @appointments = Appointment.all
    render json: @appointments
  end

  def create
  @intake =  params[:user][:username]
  @notes = params[:user][:notes]
  @found =  User.find_by!(username: @intake)
  @lee = Barber.first

  @appointment = Appointment.create(barber_id: @lee.id, user_id: @found.id, username: @found.username, notes: @notes)
  render json: @appointment
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    UserMailer.place_status.deliver

  end


end
