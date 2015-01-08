.class Lcom/android/systemui/recents/model/TaskResourceLoader;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

.field mCancelled:Z

.field mContext:Landroid/content/Context;

.field mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mDefaultThumbnail:Landroid/graphics/Bitmap;

.field mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

.field mLoadThread:Landroid/os/HandlerThread;

.field mLoadThreadHandler:Landroid/os/Handler;

.field mMainThreadHandler:Landroid/os/Handler;

.field mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

.field mWaitingOnLoadQueue:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/model/TaskResourceLoadQueue;Lcom/android/systemui/recents/model/DrawableLruCache;Lcom/android/systemui/recents/model/BitmapLruCache;Landroid/graphics/Bitmap;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 3
    .param p1, "loadQueue"    # Lcom/android/systemui/recents/model/TaskResourceLoadQueue;
    .param p2, "applicationIconCache"    # Lcom/android/systemui/recents/model/DrawableLruCache;
    .param p3, "thumbnailCache"    # Lcom/android/systemui/recents/model/BitmapLruCache;
    .param p4, "defaultThumbnail"    # Landroid/graphics/Bitmap;
    .param p5, "defaultApplicationIcon"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    .line 122
    iput-object p2, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    .line 123
    iput-object p3, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    .line 124
    iput-object p4, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 125
    iput-object p5, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 127
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Recents-TaskResourceLoader"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    .line 129
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 130
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThreadHandler:Landroid/os/Handler;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    return-void
.end method


# virtual methods
.method getTaskDescriptionIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "iconBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "iconFilename"    # Ljava/lang/String;
    .param p4, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p5, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 244
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 247
    .local v0, "tdIcon":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v0, :cond_1

    .line 248
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p4, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 250
    :goto_1
    return-object v1

    .line 244
    .end local v0    # "tdIcon":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p3}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 250
    .restart local v0    # "tdIcon":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 160
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mCancelled:Z

    if-eqz v0, :cond_1

    .line 163
    iput-object v13, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mContext:Landroid/content/Context;

    .line 165
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :goto_1
    :try_start_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 168
    :catch_0
    move-exception v8

    .line 169
    .local v8, "ie":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 173
    .end local v8    # "ie":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 176
    .local v4, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->nextTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v12

    .line 177
    .local v12, "t":Lcom/android/systemui/recents/model/Task;
    if-eqz v12, :cond_6

    .line 178
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget-object v1, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/DrawableLruCache;->get(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    .line 179
    .local v6, "cachedIcon":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget-object v1, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/BitmapLruCache;->get(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 182
    .local v7, "cachedThumbnail":Landroid/graphics/Bitmap;
    if-nez v6, :cond_4

    .line 183
    iget-object v1, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v2, v12, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/Bitmap;

    iget-object v3, v12, Lcom/android/systemui/recents/model/Task;->iconFilename:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskResourceLoader;->getTaskDescriptionIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 186
    if-nez v6, :cond_2

    .line 187
    iget-object v0, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v4, v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    .line 189
    .local v9, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v9, :cond_2

    .line 190
    iget-object v0, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v4, v9, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 194
    .end local v9    # "info":Landroid/content/pm/ActivityInfo;
    :cond_2
    if-nez v6, :cond_3

    .line 195
    iget-object v6, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget-object v1, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/recents/model/DrawableLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 203
    :cond_4
    if-nez v7, :cond_5

    .line 204
    iget-object v0, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 205
    if-eqz v7, :cond_7

    .line 206
    invoke-virtual {v7, v14}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 210
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget-object v1, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1, v7}, Lcom/android/systemui/recents/model/BitmapLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 212
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mCancelled:Z

    if-nez v0, :cond_6

    .line 214
    move-object v10, v6

    .line 215
    .local v10, "newIcon":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    if-ne v7, v0, :cond_8

    move-object v11, v13

    .line 217
    .local v11, "newThumbnail":Landroid/graphics/Bitmap;
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/model/TaskResourceLoader$1;

    invoke-direct {v1, p0, v12, v11, v10}, Lcom/android/systemui/recents/model/TaskResourceLoader$1;-><init>(Lcom/android/systemui/recents/model/TaskResourceLoader;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
    .end local v6    # "cachedIcon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "cachedThumbnail":Landroid/graphics/Bitmap;
    .end local v10    # "newIcon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "newThumbnail":Landroid/graphics/Bitmap;
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    monitor-enter v1

    .line 230
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mWaitingOnLoadQueue:Z

    .line 231
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mWaitingOnLoadQueue:Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 236
    :goto_4
    :try_start_4
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 208
    .restart local v6    # "cachedIcon":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "cachedThumbnail":Landroid/graphics/Bitmap;
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    goto :goto_2

    .restart local v10    # "newIcon":Landroid/graphics/drawable/Drawable;
    :cond_8
    move-object v11, v7

    .line 215
    goto :goto_3

    .line 233
    .end local v6    # "cachedIcon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "cachedThumbnail":Landroid/graphics/Bitmap;
    .end local v10    # "newIcon":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v8

    .line 234
    .restart local v8    # "ie":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4
.end method

.method start(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mContext:Landroid/content/Context;

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mCancelled:Z

    .line 138
    new-instance v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 140
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 142
    monitor-exit v1

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mCancelled:Z

    .line 149
    iput-object v1, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 152
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mWaitingOnLoadQueue:Z

    if-eqz v0, :cond_0

    .line 153
    iput-object v1, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mContext:Landroid/content/Context;

    .line 155
    :cond_0
    return-void
.end method
