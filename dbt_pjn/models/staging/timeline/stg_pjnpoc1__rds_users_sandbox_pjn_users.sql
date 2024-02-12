with 

source as (

    select * from {{ source('pjnpoc1', 'rds_users_sandbox_pjn_users') }}

),

renamed as (

    select
        id,
        merchant_id,
        merchant_admin_id,
        summary_notification_id,
        first_name,
        last_name,
        mobile_number,
        id_number,
        email,
        active,
        otp,
        otp_expires_at,
        email_verification_token,
        email_verification_token_expires_at,
        email_verified_at,
        mobile_number_verified_at,
        credit_score_verified_at,
        data_use_consent_at,
        minimum_amount,
        maximum_amount,
        concurrent_orders,
        password,
        remember_token,
        pending_admin_confirmation_at,
        netincomerange,
        paydate,
        pin,
        pin_reset_token,
        bank_verify_next_transaction,
        image_verify_next_transaction,
        next_image_verify_refresh,
        next_image_verify_skip,
        created_at,
        updated_at,
        deleted_at,
        next_image_verify_threshold,
        payment_wallet_id,
        payment_wallet_balance,
        payment_wallet_last_sequence_no,
        payment_wallet_balance_status,
        payment_wallet_balance_available_at,
        partition_0

    from source

)

select * from renamed
