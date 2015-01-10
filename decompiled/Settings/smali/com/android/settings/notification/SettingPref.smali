.class public Lcom/android/settings/notification/SettingPref;
.super Ljava/lang/Object;
.source "SettingPref.java"


# instance fields
.field protected final mDefault:I

.field protected mDropDown:Lcom/android/settings/notification/DropDownPreference;

.field private final mKey:Ljava/lang/String;

.field protected final mSetting:Ljava/lang/String;

.field protected mTwoState:Landroid/preference/TwoStatePreference;

.field protected final mType:I

.field private final mUri:Landroid/net/Uri;

.field private final mValues:[I


# direct methods
.method public varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 2
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # [I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/notification/SettingPref;->mType:I

    iput-object p2, p0, Lcom/android/settings/notification/SettingPref;->mKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/notification/SettingPref;->mSetting:Ljava/lang/String;

    iput p4, p0, Lcom/android/settings/notification/SettingPref;->mDefault:I

    iput-object p5, p0, Lcom/android/settings/notification/SettingPref;->mValues:[I

    iget v0, p0, Lcom/android/settings/notification/SettingPref;->mType:I

    iget-object v1, p0, Lcom/android/settings/notification/SettingPref;->mSetting:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/notification/SettingPref;->getUriFor(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SettingPref;->mUri:Landroid/net/Uri;

    return-void
.end method

.method protected static getInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0    # I
    .param p1    # Landroid/content/ContentResolver;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getUriFor(ILjava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0    # I
    .param p1    # Ljava/lang/String;

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static putInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0    # I
    .param p1    # Landroid/content/ContentResolver;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/res/Resources;
    .param p2    # I

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SettingPref;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SettingPref;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/preference/Preference;
    .locals 9
    .param p1    # Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/notification/SettingPref;->mKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SettingPref;->isApplicable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v4, 0x0

    :cond_0
    instance-of v6, v4, Landroid/preference/TwoStatePreference;

    if-eqz v6, :cond_2

    move-object v6, v4

    check-cast v6, Landroid/preference/TwoStatePreference;

    iput-object v6, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    if-eqz v6, :cond_3

    new-instance v6, Lcom/android/settings/notification/SettingPref$1;

    invoke-direct {v6, p0, v1}, Lcom/android/settings/notification/SettingPref$1;-><init>(Lcom/android/settings/notification/SettingPref;Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    :goto_0
    return-object v6

    :cond_2
    instance-of v6, v4, Lcom/android/settings/notification/DropDownPreference;

    if-eqz v6, :cond_1

    move-object v6, v4

    check-cast v6, Lcom/android/settings/notification/DropDownPreference;

    iput-object v6, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Lcom/android/settings/notification/DropDownPreference;

    iget-object v0, p0, Lcom/android/settings/notification/SettingPref;->mValues:[I

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget v5, v0, v2

    iget-object v6, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0, v7, v5}, Lcom/android/settings/notification/SettingPref;->getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Lcom/android/settings/notification/DropDownPreference;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Lcom/android/settings/notification/DropDownPreference;

    new-instance v7, Lcom/android/settings/notification/SettingPref$2;

    invoke-direct {v7, p0, v1}, Lcom/android/settings/notification/SettingPref$2;-><init>(Lcom/android/settings/notification/SettingPref;Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/DropDownPreference;->setCallback(Lcom/android/settings/notification/DropDownPreference$Callback;)V

    iget-object v6, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Lcom/android/settings/notification/DropDownPreference;

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public isApplicable(Landroid/content/Context;)Z
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x1

    return v0
.end method

.method protected setSetting(Landroid/content/Context;I)Z
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # I

    iget v0, p0, Lcom/android/settings/notification/SettingPref;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/SettingPref;->mSetting:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lcom/android/settings/notification/SettingPref;->putInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/notification/SettingPref;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/SettingPref;->mSetting:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/notification/SettingPref;->mDefault:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/notification/SettingPref;->getInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Lcom/android/settings/notification/DropDownPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Lcom/android/settings/notification/DropDownPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    goto :goto_1
.end method
