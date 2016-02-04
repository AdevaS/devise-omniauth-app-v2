Delayed::Worker.max_run_time = 2.minutes
Delayed::Worker.destroy_failed_jobs = false

module Devise
	module Models
		module Confirmable
			handle_asynchronously :send_confirmation_instructions
		end

		module Recoverable
			handle_asynchronously :send_reset_password_instructions
		end

		module Lockable
			handle_asynchronously :send_unlock_instructions
		end
	end
end
