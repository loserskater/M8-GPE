.class public Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;
.super Ljava/lang/Object;
.source "WeatherControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/WeatherController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/WeatherControllerImpl$1;,
        Lcom/android/systemui/statusbar/policy/WeatherControllerImpl$Receiver;
    }
.end annotation


# static fields
.field public static final COMPONENT_WEATHER_FORECAST:Landroid/content/ComponentName;

.field public static final CURRENT_WEATHER_URI:Landroid/net/Uri;

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field public static final WEATHER_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCachedInfo:Lcom/android/systemui/statusbar/policy/WeatherController$WeatherInfo;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/WeatherController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mReceiver:Lcom/android/systemui/statusbar/policy/WeatherControllerImpl$Receiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x3

    const-class v0, Lcom/android/systemui/statusbar/policy/WeatherController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->DEBUG:Z

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.cyanogenmod.lockclock"

    const-string v2, "com.cyanogenmod.lockclock.weather.ForecastActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->COMPONENT_WEATHER_FORECAST:Landroid/content/ComponentName;

    const-string v0, "content://com.cyanogenmod.lockclock.weather.provider/weather/current"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->CURRENT_WEATHER_URI:Landroid/net/Uri;

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "temperature"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "city"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "condition"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->WEATHER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl$Receiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl$Receiver;-><init>(Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;Lcom/android/systemui/statusbar/policy/WeatherControllerImpl$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/WeatherControllerImpl$Receiver;

    new-instance v1, Lcom/android/systemui/statusbar/policy/WeatherController$WeatherInfo;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/policy/WeatherController$WeatherInfo;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->mCachedInfo:Lcom/android/systemui/statusbar/policy/WeatherController$WeatherInfo;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->queryWeather()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.cyanogenmod.lockclock.action.WEATHER_UPDATE_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/WeatherControllerImpl$Receiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->queryWeather()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->fireCallback()V

    return-void
.end method

.method private fireCallback()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/WeatherController$Callback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->mCachedInfo:Lcom/android/systemui/statusbar/policy/WeatherController$WeatherInfo;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/WeatherController$Callback;->onWeatherChanged(Lcom/android/systemui/statusbar/policy/WeatherController$WeatherInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private queryWeather()V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->CURRENT_WEATHER_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->WEATHER_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "cursor was null for temperature, forcing weather update"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.cyanogenmod.lockclock.action.FORCE_WEATHER_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->mCachedInfo:Lcom/android/systemui/statusbar/policy/WeatherController$WeatherInfo;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/WeatherController$WeatherInfo;->temp:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->mCachedInfo:Lcom/android/systemui/statusbar/policy/WeatherController$WeatherInfo;

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/WeatherController$WeatherInfo;->city:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->mCachedInfo:Lcom/android/systemui/statusbar/policy/WeatherController$WeatherInfo;

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/WeatherController$WeatherInfo;->condition:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/WeatherController$Callback;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->mCachedInfo:Lcom/android/systemui/statusbar/policy/WeatherController$WeatherInfo;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/WeatherController$Callback;->onWeatherChanged(Lcom/android/systemui/statusbar/policy/WeatherController$WeatherInfo;)V

    goto :goto_0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/WeatherController$Callback;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WeatherControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
