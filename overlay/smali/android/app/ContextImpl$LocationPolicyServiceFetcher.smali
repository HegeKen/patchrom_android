.class final Landroid/app/ContextImpl$LocationPolicyServiceFetcher;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ContextImpl;->registerMiuiServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 2
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    new-instance v0, Landroid/location/LocationPolicyManager;

    const-string v1, "locationpolicy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/ILocationPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationPolicyManager;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/LocationPolicyManager;-><init>(Landroid/location/ILocationPolicyManager;)V

    return-object v0
.end method
