.class public Lcom/mob/tools/utils/SQLiteHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/SQLiteHelper$1;,
        Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V
    .locals 0
    .param p0, "db"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    .prologue
    # invokes: Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->close()V
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$500(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V

    return-void
.end method

.method public static delete(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p0, "db"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    # invokes: Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->open()V
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$100(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V

    # invokes: Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$200(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, "sqlDb":Landroid/database/sqlite/SQLiteDatabase;
    # invokes: Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->getName()Ljava/lang/String;
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static execSQL(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Ljava/lang/String;)V
    .locals 3
    .param p0, "db"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    # invokes: Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->open()V
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$100(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V

    # invokes: Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$200(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, "sqlDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public static getDatabase(Landroid/content/Context;Ljava/lang/String;I)Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    new-instance v0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/mob/tools/utils/SQLiteHelper$1;)V

    return-object v0
.end method

.method public static getSize(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)I
    .locals 6
    .param p0, "db"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    # invokes: Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->open()V
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$100(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V

    # invokes: Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$400(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .local v2, "sqlDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select count(*) from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # invokes: Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->getName()Ljava/lang/String;
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :catch_0
    move-exception v3

    .local v3, "t":Ljava/lang/Throwable;
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method public static insert(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Landroid/content/ContentValues;)J
    .locals 3
    .param p0, "db"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    .param p1, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    # invokes: Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->open()V
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$100(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V

    # invokes: Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$200(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, "sqlDb":Landroid/database/sqlite/SQLiteDatabase;
    # invokes: Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->getName()Ljava/lang/String;
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static query(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p0, "db"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    # invokes: Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->open()V
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$100(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V

    # invokes: Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$400(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, "sqlDb":Landroid/database/sqlite/SQLiteDatabase;
    # invokes: Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->getName()Ljava/lang/String;
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public static rawQuery(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p0, "db"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    # invokes: Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->open()V
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$100(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V

    # invokes: Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$200(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, "sqlDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public static update(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p0, "db"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    # invokes: Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->open()V
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$100(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V

    # invokes: Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$200(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, "sqlDb":Landroid/database/sqlite/SQLiteDatabase;
    # invokes: Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->getName()Ljava/lang/String;
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method
