.class public Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/SQLiteHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleTableDB"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private fieldLimits:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private fieldTypes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private primary:Ljava/lang/String;

.field private primaryAutoincrement:Z

.field private sqlite:Landroid/database/sqlite/SQLiteOpenHelper;

.field private version:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->name:Ljava/lang/String;

    iput p3, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->version:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->fieldTypes:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->fieldLimits:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/mob/tools/utils/SQLiteHelper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/mob/tools/utils/SQLiteHelper$1;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    .prologue
    invoke-direct {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->open()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    .prologue
    iget-boolean v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->primaryAutoincrement:Z

    return v0
.end method

.method static synthetic access$200(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    .prologue
    invoke-direct {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    .prologue
    invoke-direct {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    .prologue
    invoke-direct {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    .prologue
    invoke-direct {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->close()V

    return-void
.end method

.method static synthetic access$600(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->fieldTypes:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->fieldLimits:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->primary:Ljava/lang/String;

    return-object v0
.end method

.method private close()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->sqlite:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->sqlite:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->sqlite:Landroid/database/sqlite/SQLiteOpenHelper;

    :cond_0
    return-void
.end method

.method private getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->name:Ljava/lang/String;

    return-object v0
.end method

.method private getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->sqlite:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->sqlite:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private open()V
    .locals 6

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->sqlite:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB$1;

    iget-object v1, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->name:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->version:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB$1;-><init>(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->sqlite:Landroid/database/sqlite/SQLiteOpenHelper;

    :cond_0
    return-void
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldType"    # Ljava/lang/String;
    .param p3, "notNull"    # Z

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->sqlite:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->fieldTypes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->fieldLimits:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setPrimary(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "autoincrement"    # Z

    .prologue
    iput-object p1, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->primary:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->primaryAutoincrement:Z

    return-void
.end method
