package com.shopapp.domain.repository

interface PasswordResetRepository {
    suspend fun requestReset(email: String): Result<String>
    suspend fun confirmReset(
        uid: String,
        token: String,
        newPassword: String,
        newPassword2: String
    ): Result<String>
}
