.class Lcom/android/settings/DataUsageSummary$7;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary;->handleMultiSimDataDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;

.field final synthetic val$currentSir:Landroid/telephony/SubscriptionInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;Landroid/telephony/SubscriptionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    iput-object p2, p0, Lcom/android/settings/DataUsageSummary$7;->val$currentSir:Landroid/telephony/SubscriptionInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$1200(Lcom/android/settings/DataUsageSummary;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$7;->val$currentSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$7;->val$currentSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    const/4 v2, 0x1

    # invokes: Lcom/android/settings/DataUsageSummary;->setMobileDataEnabled(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->access$1000(Lcom/android/settings/DataUsageSummary;IZ)V

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$7;->val$currentSir:Landroid/telephony/SubscriptionInfo;

    # invokes: Lcom/android/settings/DataUsageSummary;->disableDataForOtherSubscriptions(Landroid/telephony/SubscriptionInfo;)V
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$1300(Lcom/android/settings/DataUsageSummary;Landroid/telephony/SubscriptionInfo;)V

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$100(Lcom/android/settings/DataUsageSummary;)V

    return-void
.end method
