.class final enum Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;
.super Ljava/lang/Enum;
.source "EnrollFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BackButtonMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

.field public static final enum AddAnother:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

.field public static final enum Back:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

.field public static final enum Cancel:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

.field public static final enum Gone:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;


# instance fields
.field final enabled:Z

.field final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 176
    new-instance v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    const-string v1, "Cancel"

    const v2, 0x7f0904d8

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;->Cancel:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    .line 177
    new-instance v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    const-string v1, "AddAnother"

    const v2, 0x7f0903ab

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;->AddAnother:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    .line 178
    new-instance v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    const-string v1, "Back"

    invoke-direct {v0, v1, v6, v5, v3}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;->Back:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    .line 179
    new-instance v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    const-string v1, "Gone"

    invoke-direct {v0, v1, v7, v5, v4}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;->Gone:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    .line 175
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    sget-object v1, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;->Cancel:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;->AddAnother:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;->Back:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;->Gone:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;->$VALUES:[Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .param p3, "text"    # I
    .param p4, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 187
    iput p3, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;->text:I

    .line 188
    iput-boolean p4, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;->enabled:Z

    .line 189
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 175
    const-class v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    return-object v0
.end method

.method public static values()[Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;->$VALUES:[Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    invoke-virtual {v0}, [Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    return-object v0
.end method
