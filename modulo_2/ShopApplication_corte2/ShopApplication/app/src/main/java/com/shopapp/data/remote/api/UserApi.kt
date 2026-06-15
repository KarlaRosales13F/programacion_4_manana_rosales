package com.shopapp.data.remote.api

import com.shopapp.data.remote.dto.*
import okhttp3.MultipartBody
import retrofit2.Response
import retrofit2.http.*

interface UserApi {
    @GET("users/")
    suspend fun getUsers(
        @Query("search") search: String?,
        @Query("is_staff") isStaff: Boolean?,
        @Query("is_active") isActive: Boolean?,
        @Query("page") page: Int?
    ): Response<PaginatedDto<UserDto>>

    @GET("users/{id}/")
    suspend fun getUser(@Path("id") id: Int): Response<UserDto>

    @POST("users/")
    suspend fun createUser(@Body body: UserRequestDto): Response<UserDto>

    @PATCH("users/{id}/")
    suspend fun updateUser(@Path("id") id: Int, @Body body: UserRequestDto): Response<UserDto>

    @DELETE("users/{id}/")
    suspend fun deleteUser(@Path("id") id: Int): Response<Unit>

    @POST("users/{id}/toggle-active/")
    suspend fun toggleActive(@Path("id") id: Int): Response<UserDto>

    @GET("users/stats/")
    suspend fun getStats(): Response<UserStatsDto>

    @GET("users/profile/")
    suspend fun getProfile(): Response<UserDto>

    @Multipart
    @PATCH("users/profile/")
    suspend fun uploadAvatar(
        @Part avatar: MultipartBody.Part,
    ): Response<UserDto>

    @POST("auth/password-reset/")
    suspend fun requestPasswordReset(@Body body: PasswordResetRequestDto): Response<MessageDto>

    @POST("auth/password-reset/confirm/")
    suspend fun confirmPasswordReset(@Body body: PasswordResetConfirmDto): Response<MessageDto>

    @POST("users/send-notification/")
    suspend fun sendNotification(@Body body: SendNotificationDto): Response<NotificationResultDto>
}
