User::HABTM_Tenants.create!([
  {tenant_id: 1, user_id: 1},
  {tenant_id: 1, user_id: 2},
  {tenant_id: 2, user_id: 3},
  {tenant_id: 1, user_id: 4},
  {tenant_id: 1, user_id: 5},
  {tenant_id: 1, user_id: 6},
  {tenant_id: 1, user_id: 7}
])
Tenant::HABTM_Users.create!([
  {tenant_id: 1, user_id: 1},
  {tenant_id: 1, user_id: 2},
  {tenant_id: 2, user_id: 3},
  {tenant_id: 1, user_id: 4},
  {tenant_id: 1, user_id: 5},
  {tenant_id: 1, user_id: 6},
  {tenant_id: 1, user_id: 7}
])
User.create!([
  {email: "john2@example.com", encrypted_password: "$2a$11$GSUWGnE.v.E1OgIsPM3YFOIycRw7lW1ZZfC5eO1CqEY6EmTCK6XTy", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "yaU8s-PrJs5GyKKVSrM-", confirmed_at: nil, confirmation_sent_at: "2018-03-29 15:14:04", unconfirmed_email: nil, skip_confirm_change_password: false, tenant_id: nil, is_admin: false},
  {email: "john5@example.com", encrypted_password: "$2a$11$eOvDCso.g7zcwsiGd7dXQOjhyy.I9Jh4ZAVnYLkdhxhFEE7VowdC2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2018-03-29 15:03:43", last_sign_in_at: "2018-03-29 15:03:43", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: "1tWiYfUS7R1NHzbUWjmf", confirmed_at: "2018-03-29 15:03:43", confirmation_sent_at: "2018-03-29 15:02:36", unconfirmed_email: nil, skip_confirm_change_password: false, tenant_id: nil, is_admin: false},
  {email: "john4@example.com", encrypted_password: "$2a$11$Q/nL4LGlsIgBKa/fG3uN7eyU.W5wUDWX6mb7f/dKMPtkEE61LJ05m", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2018-03-29 14:50:10", last_sign_in_at: "2018-03-29 14:50:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: "BvZdtAntku-F4NNs9ini", confirmed_at: "2018-03-29 14:50:10", confirmation_sent_at: "2018-03-29 14:49:44", unconfirmed_email: nil, skip_confirm_change_password: false, tenant_id: nil, is_admin: false},
  {email: "john3@example.com", encrypted_password: "$2a$11$5rGL5dcP1cW5OxL7kehmTOhwO96RGhpjho3f7jr4IAQwk2/4vky0i", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2018-03-28 14:29:05", last_sign_in_at: "2018-03-28 14:29:05", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: "ijdYkunZvsT52UtAUrQL", confirmed_at: "2018-03-28 14:29:05", confirmation_sent_at: "2018-03-28 14:28:07", unconfirmed_email: nil, skip_confirm_change_password: false, tenant_id: nil, is_admin: false},
  {email: "john1@example.com", encrypted_password: "$2a$11$FIJlAREiQ58i2Jq5x857z.O.cyQPHEs4DPs5FcR2.cV.9PZne0jMS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2018-03-22 19:29:43", last_sign_in_at: "2018-03-22 19:29:43", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: "2w-YUDwb2zLf17Z6A3aV", confirmed_at: "2018-03-22 19:29:43", confirmation_sent_at: "2018-03-22 19:29:39", unconfirmed_email: nil, skip_confirm_change_password: true, tenant_id: nil, is_admin: true},
  {email: "john@example.com", encrypted_password: "$2a$11$mOHaEE93foKGktLNuKWJ3u4SZSgIaxka6Q/0FELiam7ETWzCmjXH6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2018-03-21 17:20:03", last_sign_in_at: "2018-03-21 17:20:03", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: "CRAKx2PxTV5JNvENV8SL", confirmed_at: "2018-03-21 17:20:03", confirmation_sent_at: "2018-03-21 17:19:45", unconfirmed_email: nil, skip_confirm_change_password: false, tenant_id: nil, is_admin: false},
  {email: "andrew.mason@n2pub.com", encrypted_password: "$2a$11$WkivVRGjIzqef.Kwb362R.FOug1.QvWCzY17vqCFsYtQdhknkI5wW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 10, current_sign_in_at: "2018-03-29 15:13:42", last_sign_in_at: "2018-03-29 15:08:29", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: "6sg-EAsEebqpbL_BTrTc", confirmed_at: "2018-03-21 17:19:25", confirmation_sent_at: "2018-03-21 17:19:16", unconfirmed_email: nil, skip_confirm_change_password: true, tenant_id: nil, is_admin: true}
])
Project.create!([
  {title: "Project 1", details: "This is project 1", expected_completion_date: "2018-04-04", tenant_id: 1}
])
Tenant.create!([
  {tenant_id: nil, name: "N2 Publishing", plan: "free"},
  {tenant_id: nil, name: "N3 Publishing", plan: "free"}
])
UserProject.create!([
  {project_id: 8, user_id: 1},
  {project_id: 8, user_id: 2},
  {project_id: 8, user_id: 5}
])
