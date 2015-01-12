.class public Lcom/android/systemui/recents/model/Task;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/Task$TaskKey;,
        Lcom/android/systemui/recents/model/Task$ComponentNameKey;,
        Lcom/android/systemui/recents/model/Task$TaskCallbacks;
    }
.end annotation


# instance fields
.field public activityIcon:Landroid/graphics/drawable/Drawable;

.field public activityLabel:Ljava/lang/String;

.field public applicationIcon:Landroid/graphics/drawable/Drawable;

.field public colorPrimary:I

.field public group:Lcom/android/systemui/recents/model/TaskGrouping;

.field public icon:Landroid/graphics/Bitmap;

.field public iconFilename:Ljava/lang/String;

.field public isActive:Z

.field public isLaunchTarget:Z

.field public key:Lcom/android/systemui/recents/model/Task$TaskKey;

.field public lockToTaskEnabled:Z

.field public lockToThisTask:Z

.field mCb:Lcom/android/systemui/recents/model/Task$TaskCallbacks;

.field public taskAffiliation:I

.field public taskAffiliationColor:I

.field public thumbnail:Landroid/graphics/Bitmap;

.field public useLightOnPrimaryColor:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recents/model/Task$TaskKey;ZIILjava/lang/String;Landroid/graphics/drawable/Drawable;IZZLandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "isActive"    # Z
    .param p3, "taskAffiliation"    # I
    .param p4, "taskAffiliationColor"    # I
    .param p5, "activityTitle"    # Ljava/lang/String;
    .param p6, "activityIcon"    # Landroid/graphics/drawable/Drawable;
    .param p7, "colorPrimary"    # I
    .param p8, "lockToThisTask"    # Z
    .param p9, "lockToTaskEnabled"    # Z
    .param p10, "icon"    # Landroid/graphics/Bitmap;
    .param p11, "iconFilename"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iget v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-eq p3, v2, :cond_0

    const/4 v1, 0x1

    .line 140
    .local v1, "isInAffiliationGroup":Z
    :goto_0
    if-eqz v1, :cond_1

    if-eqz p4, :cond_1

    const/4 v0, 0x1

    .line 141
    .local v0, "hasAffiliationGroupColor":Z
    :goto_1
    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 142
    iput p3, p0, Lcom/android/systemui/recents/model/Task;->taskAffiliation:I

    .line 143
    iput p4, p0, Lcom/android/systemui/recents/model/Task;->taskAffiliationColor:I

    .line 144
    iput-object p5, p0, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    .line 145
    iput-object p6, p0, Lcom/android/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    .line 146
    if-eqz v0, :cond_2

    .end local p4    # "taskAffiliationColor":I
    :goto_2
    iput p4, p0, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    .line 147
    iget v2, p0, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/systemui/recents/misc/Utilities;->computeContrastBetweenColors(II)F

    move-result v2

    const/high16 v3, 0x40400000

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_3
    iput-boolean v2, p0, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    .line 149
    iput-boolean p2, p0, Lcom/android/systemui/recents/model/Task;->isActive:Z

    .line 150
    if-eqz p9, :cond_4

    if-eqz p8, :cond_4

    const/4 v2, 0x1

    :goto_4
    iput-boolean v2, p0, Lcom/android/systemui/recents/model/Task;->lockToThisTask:Z

    .line 151
    iput-boolean p9, p0, Lcom/android/systemui/recents/model/Task;->lockToTaskEnabled:Z

    .line 152
    iput-object p10, p0, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/Bitmap;

    .line 153
    iput-object p11, p0, Lcom/android/systemui/recents/model/Task;->iconFilename:Ljava/lang/String;

    .line 154
    return-void

    .line 139
    .end local v0    # "hasAffiliationGroupColor":Z
    .end local v1    # "isInAffiliationGroup":Z
    .restart local p4    # "taskAffiliationColor":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 140
    .restart local v1    # "isInAffiliationGroup":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .restart local v0    # "hasAffiliationGroupColor":Z
    :cond_2
    move p4, p7

    .line 146
    goto :goto_2

    .line 147
    .end local p4    # "taskAffiliationColor":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 150
    :cond_4
    const/4 v2, 0x0

    goto :goto_4
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/recents/model/Task;)V
    .locals 1
    .param p1, "o"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 158
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 159
    iget v0, p1, Lcom/android/systemui/recents/model/Task;->taskAffiliation:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->taskAffiliation:I

    .line 160
    iget v0, p1, Lcom/android/systemui/recents/model/Task;->taskAffiliationColor:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->taskAffiliationColor:I

    .line 161
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    .line 162
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    .line 163
    iget v0, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    .line 164
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    .line 165
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isActive:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isActive:Z

    .line 166
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->lockToThisTask:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->lockToThisTask:Z

    .line 167
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->lockToTaskEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->lockToTaskEnabled:Z

    .line 168
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 204
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    .line 205
    .local v0, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/Task$TaskKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public notifyTaskDataLoaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "applicationIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 185
    iput-object p2, p0, Lcom/android/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    .line 186
    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .line 187
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->mCb:Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->mCb:Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/model/Task$TaskCallbacks;->onTaskDataLoaded()V

    .line 190
    :cond_0
    return-void
.end method

.method public notifyTaskDataUnloaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "defaultThumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "defaultApplicationIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 194
    iput-object p2, p0, Lcom/android/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    .line 195
    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .line 196
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->mCb:Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->mCb:Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/model/Task$TaskCallbacks;->onTaskDataUnloaded()V

    .line 199
    :cond_0
    return-void
.end method

.method public setCallbacks(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->mCb:Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    .line 173
    return-void
.end method

.method public setGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V
    .locals 2
    .param p1, "group"    # Lcom/android/systemui/recents/model/TaskGrouping;

    .prologue
    .line 177
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This task is already assigned to a group."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    .line 181
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 210
    const-string v0, "no group"

    .line 211
    .local v0, "groupAffiliation":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    iget v1, v1, Lcom/android/systemui/recents/model/TaskGrouping;->affiliation:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
