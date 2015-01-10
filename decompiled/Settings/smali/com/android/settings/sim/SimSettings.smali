.class public Lcom/android/settings/sim/SimSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "SimSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimSettings$SimPreference;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAvailableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCalls:Landroid/telephony/SubInfoRecord;

.field private mCellularData:Landroid/telephony/SubInfoRecord;

.field private mNumSims:I

.field private mSMS:Landroid/telephony/SubInfoRecord;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/sim/SimSettings$2;

    invoke-direct {v0}, Lcom/android/settings/sim/SimSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/sim/SimSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "no_config_sim"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mCellularData:Landroid/telephony/SubInfoRecord;

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mCalls:Landroid/telephony/SubInfoRecord;

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSMS:Landroid/telephony/SubInfoRecord;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0    # Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    return-void
.end method

.method private createPreferences()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    const v5, 0x7f050034

    invoke-virtual {p0, v5}, Lcom/android/settings/sim/SimSettings;->addPreferencesFromResource(I)V

    const-string v5, "sim_cards"

    invoke-virtual {p0, v5}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings;->findRecordBySlotId(I)Landroid/telephony/SubInfoRecord;

    move-result-object v3

    new-instance v5, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, p0, v6, v3, v0}, Lcom/android/settings/sim/SimSettings$SimPreference;-><init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubInfoRecord;I)V

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_0

    iget v5, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateActivitesCategory()V

    return-void
.end method

.method private findRecordBySlotId(I)Landroid/telephony/SubInfoRecord;
    .locals 4
    .param p1    # I

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubInfoRecord;

    iget v3, v2, Landroid/telephony/SubInfoRecord;->slotId:I

    if-ne v3, p1, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private findRecordBySubId(J)Landroid/telephony/SubInfoRecord;
    .locals 7
    .param p1    # J

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubInfoRecord;

    if-eqz v2, :cond_0

    iget-wide v4, v2, Landroid/telephony/SubInfoRecord;->subId:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateActivitesCategory()V
    .locals 1

    const-string v0, "sim_cellular_data"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->createDropDown(Lcom/android/settings/notification/DropDownPreference;)V

    const-string v0, "sim_calls"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->createDropDown(Lcom/android/settings/notification/DropDownPreference;)V

    const-string v0, "sim_sms"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->createDropDown(Lcom/android/settings/notification/DropDownPreference;)V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCallValues()V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSmsValues()V

    return-void
.end method

.method private updateAllOptions()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSimSlotValues()V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateActivitesCategory()V

    return-void
.end method

.method private updateCallValues()V
    .locals 6

    const/4 v2, 0x1

    const-string v3, "sim_calls"

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/settings/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubInfoRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v3, v1, Landroid/telephony/SubInfoRecord;->slotId:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/DropDownPreference;->setSelectedItem(I)V

    :cond_0
    iget v3, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    if-le v3, v2, :cond_1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateCellularDataValues()V
    .locals 6

    const/4 v2, 0x1

    const-string v3, "sim_cellular_data"

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/settings/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubInfoRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v3, v1, Landroid/telephony/SubInfoRecord;->slotId:I

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/DropDownPreference;->setSelectedItem(I)V

    :cond_0
    iget v3, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    if-le v3, v2, :cond_1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateSimSlotValues()V
    .locals 6

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getAllSubInfoList()Ljava/util/List;

    const-string v5, "sim_cards"

    invoke-virtual {p0, v5}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    instance-of v5, v1, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v5, :cond_0

    check-cast v1, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-virtual {v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->update()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateSmsValues()V
    .locals 6

    const/4 v2, 0x1

    const-string v3, "sim_sms"

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/settings/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubInfoRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v3, v1, Landroid/telephony/SubInfoRecord;->slotId:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/DropDownPreference;->setSelectedItem(I)V

    :cond_0
    iget v3, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    if-le v3, v2, :cond_1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createDropDown(Lcom/android/settings/notification/DropDownPreference;)V
    .locals 8
    .param p1    # Lcom/android/settings/notification/DropDownPreference;

    move-object v3, p1

    invoke-virtual {v3}, Lcom/android/settings/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v6, "sim_calls"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "sim_sms"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3}, Lcom/android/settings/notification/DropDownPreference;->clearItems()V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0808ef

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/android/settings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_4

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubInfoRecord;

    if-eqz v4, :cond_2

    iget-object v6, v4, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Lcom/android/settings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    new-instance v6, Lcom/android/settings/sim/SimSettings$1;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/sim/SimSettings$1;-><init>(Lcom/android/settings/sim/SimSettings;Lcom/android/settings/notification/DropDownPreference;)V

    invoke-virtual {v3, v6}, Lcom/android/settings/notification/DropDownPreference;->setCallback(Lcom/android/settings/notification/DropDownPreference$Callback;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->createPreferences()V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    instance-of v0, p2, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settings/sim/SimSettings$SimPreference;

    check-cast p2, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/sim/SimSettings$SimPreference;->createEditDialog(Lcom/android/settings/sim/SimSettings$SimPreference;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    return-void
.end method
