module DcMembersHelper
	def dc_member_params
    params.require(:dc_member).permit(:blood_group, :course_name, :date_of_birth, :email, :father_name, :first_name, :gender, :github_link, :guardian_name, :last_name, :linkedin_link, :local_address, :mid_name, :mother_name, :permanent_address, :sem_of_joining)
  end

end
