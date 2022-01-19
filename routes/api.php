<?php

//---------------------HOME CONTROLLER NAMESPACE--------------------------------------
use App\Http\Controllers\Api\v1\AuthController;
use App\Http\Controllers\Api\v1\CategoryController;
use App\Http\Controllers\Api\v1\PostController;
//-------------------ADMIN CONTROLLERS NAMESPACE--------------------------------------
use App\Http\Controllers\Api\v1\Admin\CategoryController as AdminCategoryController;
use App\Http\Controllers\Api\v1\Admin\CommentController as AdminCommentController;
use App\Http\Controllers\Api\v1\Admin\PostController as AdminPostController;
use App\Http\Controllers\Api\v1\Admin\UserController as AdminUserController;
// -------------------------OTHERS---------------------------
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// ============================================API V1 ROUTES================================================
Route::prefix('v1')->group(function () {


    //------------------------------------------Guest Routes---------------------------------------

    //Authentication Routes
    Route::post('/register', [AuthController::class, 'register'])->name('register');
    Route::post('/login', [AuthController::class, 'login'])->name('login');
    Route::post('/password/reset', [AuthController::class, 'passwordReset'])->name('password.reset');
    Route::post('/logout', [AuthController::class, 'logOut'])->middleware(['auth:api'])->name('logout');

    //Post Routes
    Route::get('/posts', [PostController::class, 'index'])->name('posts');
    Route::get('/posts/post/{post}', [PostController::class, 'show'])->name('post.show');

    //Category Routes
    Route::get('/categories',  [CategoryController::class, 'index'])->name('categories');
    Route::get('/categories/category/{category}',  [CategoryController::class, 'show'])->name('category.show');




    // ----------------------------------------Authenticated User Routes-----------------------------------
    Route::middleware('auth:api')->group(function () {
        Route::get('authenticated-user', [AuthController::class, 'authenticatedUser'])->name('authenticated.user');

        Route::post('posts/post/{post}/send-comment', [PostController::class, 'sendComment'])->name('send.comment');
        Route::put('posts/post/{post}/like-post', [PostController::class, 'likePost'])->name('like.post');
    });




    //  ------------------------------------------ADMIN ACCESS-------------------------------------------
    Route::prefix('admin')->middleware(['auth:api', 'admin'])->group(function () {

        //Users Routes
        Route::apiResource('users', AdminUserController::class);
        Route::get('user/admin/list', [AdminUserController::class, 'adminUsers']);

        //Category Routes
        Route::apiResource('categories', AdminCategoryController::class);
        Route::get('categories/category/{category}/child', [AdminCategoryController::class, 'child']);
        Route::get('categories/category/{category}/posts', [AdminCategoryController::class, 'posts']);


        //Post Routes
        Route::apiResource('posts', AdminPostController::class);

        //Comment Routes
        Route::get('comments/approved', [AdminCommentController::class, 'approved']);
        Route::get('comments/unapproved', [AdminCommentController::class, 'unApproved']);
        Route::put('comments/comment/{comment}/approve', [AdminCommentController::class, 'approveComment']);
    });
});
