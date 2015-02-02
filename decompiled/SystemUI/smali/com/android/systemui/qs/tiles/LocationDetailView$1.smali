.class Lcom/android/systemui/qs/tiles/LocationDetailView$1;
.super Ljava/lang/Object;
.source "LocationDetailView.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/LocationDetailView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/LocationDetailView;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/LocationDetailView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationDetailView$1;->this$0:Lcom/android/systemui/qs/tiles/LocationDetailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationDetailView$1;->this$0:Lcom/android/systemui/qs/tiles/LocationDetailView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/tiles/LocationDetailView;->onRadioButtonClicked(I)V

    return-void
.end method
