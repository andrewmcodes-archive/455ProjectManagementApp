User::HABTM_Tenants.create!([
  {tenant_id: 1, user_id: 1},
  {tenant_id: 1, user_id: 2},
  {tenant_id: 1, user_id: 3}
])
Tenant::HABTM_Users.create!([
  {tenant_id: 1, user_id: 1},
  {tenant_id: 1, user_id: 2},
  {tenant_id: 1, user_id: 3}
])
User.create!([
  {email: "john@example.com", encrypted_password: "$2a$11$pFaT9E5vYvin/FSSCJJJy.YU/goegW7Ni1DEwCUhJe9dkXIZ7GHWi", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "3uxL1sy-cf2ef-RyV6Cp", confirmed_at: nil, confirmation_sent_at: "2018-04-24 03:26:26", unconfirmed_email: nil, skip_confirm_change_password: false, tenant_id: nil, is_admin: false},
  {email: "stripe@example.com", encrypted_password: "$2a$11$9pJ4SBhsopYLoyJzxih.IuxUpJXk8Y4ST8EcqrIHddjKK5qCow1.i", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "6HYsYLaFM-2sxDsBG21g", confirmed_at: nil, confirmation_sent_at: "2018-04-24 00:12:10", unconfirmed_email: nil, skip_confirm_change_password: false, tenant_id: nil, is_admin: false},
  {email: "andrew.mason@n2pub.com", encrypted_password: "$2a$11$F9DWkvocug4RbPVlVbr3l.8N5N7h7y2e5OESZ/GfRE5gLv5vHkpJ6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2018-04-24 01:49:10", last_sign_in_at: "2018-04-24 01:22:30", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: "gEM3vEx33KmSRnyzG1Jo", confirmed_at: "2018-04-23 21:12:04", confirmation_sent_at: "2018-04-23 21:11:50", unconfirmed_email: nil, skip_confirm_change_password: true, tenant_id: nil, is_admin: true}
])
Payment.create!([
  {email: nil, token: "tok_1CKFpeE4tH5xb9kf3Xqh3QgH", tenant_id: 1}
])
Project.create!([
  {title: "Project 1 Title", details: "Project 1 Details", expected_completion_date: "2018-05-31", tenant_id: 1}
])
Task.create!([
  {title: "New Task 1 Title", description: "New Task 1 Description", completed: "2018-04-30", project_id: 6, assigned_by: nil, assigned_to: 2, expected_completion_date: nil}
])
Tenant.create!([
  {tenant_id: nil, name: "N2 Publishing", plan: "premium"}
])
UserProject.create!([
  {project_id: 6, user_id: 1},
  {project_id: 6, user_id: 2}
])
