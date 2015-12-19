.class Lcom/james/biuedittext/BiuEditText$1;
.super Ljava/lang/Object;
.source "BiuEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/james/biuedittext/BiuEditText;->setlistener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/james/biuedittext/BiuEditText;


# direct methods
.method constructor <init>(Lcom/james/biuedittext/BiuEditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/james/biuedittext/BiuEditText$1;->this$0:Lcom/james/biuedittext/BiuEditText;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 95
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 77
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 82
    iget-object v1, p0, Lcom/james/biuedittext/BiuEditText$1;->this$0:Lcom/james/biuedittext/BiuEditText;

    # getter for: Lcom/james/biuedittext/BiuEditText;->cacheStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/james/biuedittext/BiuEditText;->access$0(Lcom/james/biuedittext/BiuEditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 83
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 84
    .local v0, "last":C
    iget-object v1, p0, Lcom/james/biuedittext/BiuEditText$1;->this$0:Lcom/james/biuedittext/BiuEditText;

    const/4 v2, 0x1

    # invokes: Lcom/james/biuedittext/BiuEditText;->update(CZ)V
    invoke-static {v1, v0, v2}, Lcom/james/biuedittext/BiuEditText;->access$1(Lcom/james/biuedittext/BiuEditText;CZ)V

    .line 89
    :goto_0
    iget-object v1, p0, Lcom/james/biuedittext/BiuEditText$1;->this$0:Lcom/james/biuedittext/BiuEditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/james/biuedittext/BiuEditText;->access$2(Lcom/james/biuedittext/BiuEditText;Ljava/lang/String;)V

    .line 90
    return-void

    .line 86
    .end local v0    # "last":C
    :cond_0
    iget-object v1, p0, Lcom/james/biuedittext/BiuEditText$1;->this$0:Lcom/james/biuedittext/BiuEditText;

    # getter for: Lcom/james/biuedittext/BiuEditText;->cacheStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/james/biuedittext/BiuEditText;->access$0(Lcom/james/biuedittext/BiuEditText;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/james/biuedittext/BiuEditText$1;->this$0:Lcom/james/biuedittext/BiuEditText;

    # getter for: Lcom/james/biuedittext/BiuEditText;->cacheStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/james/biuedittext/BiuEditText;->access$0(Lcom/james/biuedittext/BiuEditText;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 87
    .restart local v0    # "last":C
    iget-object v1, p0, Lcom/james/biuedittext/BiuEditText$1;->this$0:Lcom/james/biuedittext/BiuEditText;

    const/4 v2, 0x0

    # invokes: Lcom/james/biuedittext/BiuEditText;->update(CZ)V
    invoke-static {v1, v0, v2}, Lcom/james/biuedittext/BiuEditText;->access$1(Lcom/james/biuedittext/BiuEditText;CZ)V

    goto :goto_0
.end method
